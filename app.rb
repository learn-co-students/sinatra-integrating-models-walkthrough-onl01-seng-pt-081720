require_relative "models/text_analyzer.rb"
require_relative 'config/environment'


class App < Sinatra::Base

      get '/' do
        erb :index
      end

      post '/' do
        text_from_user = params[:user_text]
        @analyzed_text = TextAnalyzer.new(params[:user_text])
        erb :results
       
      end
end