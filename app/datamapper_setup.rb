require 'data_mapper'
require 'dm-postgres-adapter'

require './app/models/user.rb'

# DataMapper::Logger.new($stdout, :debug)
DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/bnb_#{ENV['RACK_ENV']}")
DataMapper.finalize
DataMapper.auto_upgrade!