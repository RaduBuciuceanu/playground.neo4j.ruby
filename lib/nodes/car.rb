require 'neo4j'

module Nodes
  class Car
    include Neo4j::ActiveNode

    self.mapped_label_name = :Car

    property :type

    has_many :in, :persons, type: false, model_class: ['Nodes::Person']
  end
end
