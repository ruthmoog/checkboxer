# frozen_string_literal: true

require 'sinatra/base'
require_relative './lib/checklist.rb'

# App controller for 'Checkboxer'
class Checkboxer < Sinatra::Base
  get '/' do
    erb(:index)
  end

  get '/template/new' do
    @checklist = Checklist.generate
    erb(:new)
  end

  post '/templates' do
    @choice = params[:checklist_item]
    erb(:templates)
  end
end
