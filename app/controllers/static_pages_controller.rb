require 'koala'

class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def about
  end

  def security
  end

  def sitemap
  end

  def become_a_tutor
  end

  def tips
  end

  def terms
  end

  def create_an_account
  end

  def koala_test
    graph = Koala::Facebook::API.new(current_user.facebook_access_token)
    profile = graph.get_object('me?fields=email,education', api_version: '2.0')
    render json: {
      profile: profile,
    }
  end
end
