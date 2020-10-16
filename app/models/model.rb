require 'mongoid'

Mongoid.load!('config/mongoid.yml')

module Model 
  class Visitor
    include Mongoid::Document

    field :nik, type: String
    field :profession, type: String
  end
end 
