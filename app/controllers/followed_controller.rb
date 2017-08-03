class FollowedController < ApplicationController

  def index
    @followed = Followed.find_followers(current_user.nickname)
  end
end
