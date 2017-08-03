class FollowedService

  def self.find_followers(nickname)
    response = Faraday.get("https://api.github.com/users/#{nickname}/following?client_id=#{ENV['client_id']}&client_secret=#{ENV['client_secret']}")
    JSON.parse(response.body)
  end
end
