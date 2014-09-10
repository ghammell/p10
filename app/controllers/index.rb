get '/'  do
  api = SpotMe::Client.new

  if params[:code] != nil
    client_id = "TWGEEI2BJU45QBLFVXFHVLMJVPXDGBAOC4B0VSYCWJDYFGRQ"
    secret = "HBEROOYRDWDOB1ASX2MGZWLCHRELJMOKF0GQ1SHWECHVVIKF"
    redirect_url = "http://fathomless-fortress-1403.herokuapp.com/"
    code = params[:code]

    @access_token = api.get_access_token(client_id, secret, redirect_url, code)
  end

  # session[:user_code] = @user_code
  erb :home_page
end

get '/sign-in' do
  client_id = "TWGEEI2BJU45QBLFVXFHVLMJVPXDGBAOC4B0VSYCWJDYFGRQ"
  redirect_url = "http://fathomless-fortress-1403.herokuapp.com/"
  redirect "https://foursquare.com/oauth2/authenticate?client_id=" + client_id + "&response_type=code&redirect_uri=" + redirect_url
end



