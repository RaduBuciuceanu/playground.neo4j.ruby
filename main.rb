# frozen_string_literal: true

$LOAD_PATH.unshift(File.dirname(__FILE__).to_s)

require 'pry'
require 'neo4j'
require 'neo4j/core/cypher_session/adaptors/http'

require 'lib/nodes/car'
require 'lib/nodes/address'
require 'lib/nodes/person'

neo4j_adaptor = Neo4j::Core::CypherSession::Adaptors::HTTP.new('http://neo4j:neo4j@localhost:7474')
Neo4j::ActiveBase.on_establish_session { Neo4j::Core::CypherSession.new(neo4j_adaptor) }

person = Nodes::Person.where(name: 'Andy')
binding.pry
p person
