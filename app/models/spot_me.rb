module SpotMe

  class Client
    include HTTParty

    # base_uri "http://fathomless-fortress-1403.herokuapp.com"

    def initialize
    end

    def get_access_token(client_id, secret, redirect_url, code)
      foursquare_response = self.class.get("https://foursquare.com/oauth2/access_token?client_id=" + client_id + "&client_secret=" + secret + "&grant_type=authorization_code&redirect_uri=" + redirect_url + "&code=" + code)
    end

    def get_user_data(user_id, access_token)
      foursquare_response = self.class.get("https://api.foursquare.com/v2/users/" + user_id + "?oauth_token=" + access_token
    end
  end
end
