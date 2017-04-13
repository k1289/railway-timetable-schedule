class Schedule 
  include Neo4j::ActiveNode
  property :arrtime, type: Time
  property :depttime, type: Time
  property :platformnum, type: Integer
  
  has_one :both, :train
  has_one :out, :station

end
