# frozen_string_literal: true

Rails.application.routes.draw do
  root 'generator#home'

  get '/transform' => 'generator#transform'
end
