require 'neo4j'

module Nodes
  class Address
    include Neo4j::ActiveNode

    self.mapped_label_name = :Address

    property :street

    has_many :out, :persons, type: false, model_class: ['Nodes::Person']
  end
end
