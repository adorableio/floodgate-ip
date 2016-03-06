require 'sinatra/base'

class Ip < Sinatra::Base
  get '/' do
    content_type :text
    request.ip
  end
end
