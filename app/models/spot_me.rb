module SpotMe

  class Client
    include HTTParty

    base_uri "http://fathomless-fortress-1403.herokuapp.com"

    def initialize
    end

    def get_access_token(client_id, secret, redirect_url, code)
      response = self.class.get("https://foursquare.com/oauth2/access_token?client_id=" + client_id + "&client_secret=" + secret + "&grant_type=authorization_code&redirect_uri=" + redirect_url + "&code=" + code)
    end
  end
end
