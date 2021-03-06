# == Schema Information
#
# Table name: users
#
#  id                      :integer          not null, primary key
#  current_sign_in_at      :datetime
#  current_sign_in_ip      :string
#  email                   :string           default(""), not null
#  encrypted_password      :string           default(""), not null
#  image                   :text
#  language                :integer          default("japanese")
#  last_sign_in_at         :datetime
#  last_sign_in_ip         :string
#  name                    :string
#  provider                :string
#  remember_created_at     :datetime
#  reset_password_sent_at  :datetime
#  reset_password_token    :string
#  school_email            :string
#  sign_in_count           :integer          default(0), not null
#  tutor_activated         :boolean          default(FALSE)
#  tutor_activation_digest :string
#  type                    :string
#  uid                     :string
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, 
         :omniauthable, :omniauth_providers => [:facebook]

  attr_accessor :tutor_activation_token
  

  enum language: {japanese: 0, united_states: 1, united_kingdom: 2, canada: 3}
         
  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.name = auth.info.name   # assuming the user model has a name
      user.image = auth.info.image # assuming the user model has an image
    end
  end

  def User.digest str
    BCrypt::Password.create str
  end

  def create_tutor_activation_digest
    self.tutor_activation_token = SecureRandom.urlsafe_base64
    self.update_attribute(:tutor_activation_digest, User.digest(tutor_activation_token))
  end

  def authenticate_tutor token
    BCrypt::Password.new(tutor_activation_digest).is_password?(token)
  end

  def activate_tutor
    update_attribute(:tutor_activated, true)
  end
end
