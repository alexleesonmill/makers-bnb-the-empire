require 'sinatra/base'
require 'sinatra/flash'

class MakersBnB < Sinatra::Base

  run! if app_file == $0
end