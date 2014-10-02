class ServicesController < ApplicationController

  def instagram
    @message = begin
      RestClient.post 'https://api.instagram.com/oauth/access_token', parameters
      sign_in User.find_or_create_by_instagram JSON.parse(response.body)
      'successfully signed in'
    rescue => e
      e.response.body
    end
    render 'index/root'
  end

  private

  def url_for_redirect
    "http://#{request.host}#{request.port == 3000 ? ':3000' : ''}"
  end

  def parameters
    {
      client_id: IG_SECRETS[Rails.env][:id],
      client_secret: IG_SECRETS[Rails.env][:key],
      grant_type: 'authorization_code',
      redirect_uri: url_for_redirect + '/arc/auth/instagram/callback',
      code: params[:code]
    }
  end
end
