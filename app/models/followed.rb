class Followed < ActiveRecord::Base
  attr_reader :user, :avatar_url, :url

  def initialize(attributes={})
    @user = attributes['login']
    @image = attributes['avatar_url']
    @url = attributes['html_url']
  end

  def self.find_followers(nickname)
    FollowedService.find_followers(nickname).map do |follower|
      new(follower)
    end
  end
end
