class User < ActiveRecord::Base
  attr_accessible :auth_token, :ig_name

  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  def User.find_or_create_by_instagram data
    unless where(ig_name: data['user']['username']).first
      create! ig_name: data['user']['username'], auth_token: data['access_token']
    end
  end

end
