# frozen_string_literal: true

Rails.application.routes.draw do
  root 'generator#home'

  get '/show' => 'generator#show'
end
