class CustomAuthenticationFailure < Devise::FailureApp
  protected
    def redirect_url
      root_path + "users/auth/facebook"
    end
end
