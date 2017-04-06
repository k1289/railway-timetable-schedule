class Spltrain 
  include Neo4j::ActiveNode
  property :status, type: String
  property :date, type: Date



end
