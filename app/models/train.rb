class Train 
  include Neo4j::ActiveNode
  property :number, type: Integer
  property :name, type: String
  property :totalcapacity, type: Integer
  property :type, type: String
  property :starttime, type: Time
  property :endtime, type: Time
  property :rundays, type: String



end
