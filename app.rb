# frozen_string_literal: true

require 'sinatra/base'

# App controller for 'Checkboxer'
class Checkboxer < Sinatra::Base
  get '/' do
    'Hello, world!'
  end
end
