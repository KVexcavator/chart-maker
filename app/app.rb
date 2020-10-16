require_relative './models/model.rb'
require_relative './types/types.rb'
require_relative './service/service.rb'


class ChartMaker < Sinatra::Base

  configure do
    set :app_file, __FILE__

    Schema = GraphQL::Schema.define do
#      query QueryType
      mutation MutationType 
    end
  end

  get '/blah' do
    'Hello ChartMaker!'
  end

  post '/blah' do
    req = JSON.parse(request.body.read)
    Schema.execute(req['query']).to_json
  end
end
