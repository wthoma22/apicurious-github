class User < ActiveRecord::Base
  validates_presence_of :uid, :provider, :token, :nickname, :name, :email, :avatar_url

  def self.find_or_create_by_auth(auth)
    user = User.find_or_create_by(provider: auth['provider'], uid: auth['uid'])

    user.nickname   = auth['info']['nickname']
    user.name       = auth['info']['name']
    user.email      = auth['info']['email']
    user.avatar_url = auth['info']['image']
    user.location   = auth['info']['location']
    user.token      = auth['credentials']['token']

    user.save
    user
  end
end
