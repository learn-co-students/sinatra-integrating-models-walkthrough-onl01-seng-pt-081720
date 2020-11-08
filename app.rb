require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    #instance saved to an instance variable, allows us to call it and its methods from results.erb
    @analyzed_text = TextAnalyzer.new(params[:user_text])
    #we are raking data from params and feeding it to a new 
    #instancee of the TextAnalyzer class:
    # @analyzed_text = TextAnalyzer.new(text_from_user
    erb :results
  end
end
