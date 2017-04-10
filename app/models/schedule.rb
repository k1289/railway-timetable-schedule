class Schedule 
  include Neo4j::ActiveNode
  property :arrtime, type: Time
  property :depttime, type: Time
  property :platformnum, type: Integer



end
