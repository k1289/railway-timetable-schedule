class Ticket 
  include Neo4j::ActiveNode
  property :from, type: String
  property :to, type: String
  property :doj, type: Date



end
