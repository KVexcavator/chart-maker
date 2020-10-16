require 'mongoid'

Mongoid.load!(File.join(__dir__, 'mongoid.yml'))

class Visitor
  include Mongoid::Document

  field :name, type: String
  field :text, type: String
end
