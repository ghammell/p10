get '/'  do
  @code = params[:code]
  erb :home_page
end

get '/sign-in' do
  client_id = "TWGEEI2BJU45QBLFVXFHVLMJVPXDGBAOC4B0VSYCWJDYFGRQ"
  redirect_url = "http://fathomless-fortress-1403.herokuapp.com/"

  redirect "https://foursquare.com/oauth2/authenticate?client_id=" + client_id + "&response_type=code&redirect_uri=" + redirect_url
end

# get '/signed-in' do
#   @code = params[:code]
#   erb :signed_in
# end



