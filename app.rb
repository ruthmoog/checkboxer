# frozen_string_literal: true

require 'sinatra/base'

# App controller for 'Checkboxer'
class Checkboxer < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/templates' do
    erb(:templates)
  end
end
