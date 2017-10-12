require 'sinatra'
require 'sinatra/reloader'
require_relative 'caesar'

get '/' do
  message = params["message"]
  modifier = params["modifier"].to_i
  if params["action"] == "cipher"
    encrypted_message = Caesar.new.cipher(message, modifier) if modifier && message
  else
    encrypted_message = Caesar.new.decipher(message, modifier) if modifier && message
  end
  erb :index, :locals => { :encrypted_message => encrypted_message }
end
