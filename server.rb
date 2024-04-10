# frozen_string_literal: true

require 'sinatra'
require 'sinatra/reloader' if development?
require 'erb'

helpers do
  def read_data
    request.body.rewind
    JSON.parse request.body.read
  end

  def validate_params(params)
    errors = []

    errors << 'Email is required' if params[:email].nil? || params[:email].empty?
    errors << 'Breed is required' if params[:breed].nil? || params[:breed].empty?
    errors << 'Gender is required and should be either male or female' unless params[:gender] || %w[male female].include?(params[:gender])
    errors
  end
end

before do
  cache_control :no_cache
end

adoptions = [
  { id: Time.now.to_i, email: 'jeferson@codeminer42.com', gender: 'Male', breed: 'Pug' }
]

get '/' do
  ERB.new(File.read('public/index.html')).result(binding)
end

get '/about' do
  ERB.new(File.read('public/about.html')).result(binding)
end

get '/gallery' do
  ERB.new(File.read('public/gallery.html')).result(binding)
end

post '/adopt' do
  contact_email = params['email']
  breed = params['breed']
  gender = params['gender']

  errors = validate_params(params)
  if errors.empty?
    adoptions.push({ id: Time.now.to_i, email: contact_email, breed: breed.downcase, gender: gender.downcase })
    erb "
      <h1>Great your adoption entry for new puppy has been registered!</h1>
      <p>We'll contact #{contact_email.to_s} with more details.</p>
    "
  else
    [400, errors.join('<br>')]
  end
end
