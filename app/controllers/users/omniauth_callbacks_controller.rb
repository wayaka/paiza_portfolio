class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  # callback for facebook
  def facebook
    callback_for(:facebook)
  end

  # callback for twitter
  def twitter
    callback_for(:twitter)
  end

  # common callback method
  def callback_for(provider)
    puts request.env["omniauth.auth"] 
    @user = User.from_omniauth(request.env["omniauth.auth"])
    if @user.persisted?
      sign_in_and_redirect @user, event: :authentication
      set_flash_message(:notice, :success, kind: "#{provider}".capitalize) if is_navigational_format?
    else
      session["devise.#{provider}_data"] = request.env["omniauth.auth"].except("extra")
      redirect_to new_user_registration_url
    end
  end

  def failure
    redirect_to root_path
  end

end