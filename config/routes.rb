# frozen_string_literal: true

Rails.application.routes.draw do
  get '/generator', to: 'generator#home'
end
