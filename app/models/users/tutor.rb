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

class Tutor < User
  # belongs_to :user

  # validates :school_email, presence: true
end
