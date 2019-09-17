require 'neo4j'

module Nodes
  class Person
    include Neo4j::ActiveNode

    self.mapped_label_name = :Person

    property :name

    has_many :out, :cars, type: false, model_class: ['Nodes::Car']
    has_many :out, :addresses, type: false, model_class: ['Nodes::Address']
  end
end
