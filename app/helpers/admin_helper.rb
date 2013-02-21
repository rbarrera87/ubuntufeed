module AdminHelper
  def tweet string
    Twitter.configure do |config|
      config.consumer_key = ENV["CK"]
      config.consumer_secret =  ENV["CS"]
      config.oauth_token = ENV["OT"]
      config.oauth_token_secret = ENV["OTS"]
    end
    client = Twitter::Client.new
    client.update(string)
  end
end
