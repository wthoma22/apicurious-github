class UserRepository
  attr_reader :name, :url, :issues, :language

  def initialize(attributes={})
    @name = attributes[:name]
    @url = attributes[:html_url]
    @issues = attributes[:open_issues_count]
    @language = attributes[:language]
  end

  def self.find_repos(user)
    UserRepositoryService.find_repos(user).map do |repo|
      new(repo)
    end
  end
end
