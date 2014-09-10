module SpotMe

  class Client
    include HTTParty

    # base_uri "http://fathomless-fortress-1403.herokuapp.com"

    def initialize
    end

    def get_access_token(client_id, secret, redirect_url, code)
      foursquare_response = self.class.get("https://foursquare.com/oauth2/access_token?client_id=" + client_id + "&client_secret=" + secret + "&grant_type=authorization_code&redirect_uri=" + redirect_url + "&code=" + code)
    end

    def get_user_data(access_token)
      url_end = "?oauth_token=" + access_token + "&v=20140806&m=foursquare"
      foursquare_response = self.class.get("https://api.foursquare.com/v2/users/self" + url_end)
      photo_url = foursquare_response["response"]["user"]["photo"]["prefix"] + "300x500" + foursquare_response["response"]["user"]["photo"]["suffix"]
      friends_response = self.class.get("https://api.foursquare.com/v2/users/self/friends" + url_end)
      friends = friends_response["response"]["friends"]["items"]
      attributes = {photo_url: photo_url, friends: friends}
    end
  end
end
