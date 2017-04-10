class Trainrun 
  include Neo4j::ActiveNode
  property :status, type: String
  property :date, type: Date
  property :trainnum, type: Integer



end
