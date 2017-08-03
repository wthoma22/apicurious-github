class RepositoriesController < ApplicationController

  def index
    @repositories = UserRepository.find_repos(current_user.nickname)
  end
end
