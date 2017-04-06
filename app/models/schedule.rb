class Schedule 
  include Neo4j::ActiveNode
  property :arrtime, type: String
  property :depttime, type: String
  property :platformnum, type: Integer



end
