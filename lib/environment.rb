#This file is being called by the executable: bin/countries. 
#Here in the environment is where you pull in everything that you want.

require 'pry'
require 'HTTParty' #allows me to request data from API
require 'json'

require_relative './mycountries/cli'
require_relative './mycountries/api'
require_relative './mycountries/country'