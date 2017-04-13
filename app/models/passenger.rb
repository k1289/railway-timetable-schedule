class Passenger 
  include Neo4j::ActiveNode
  property :name, type: String
  property :age, type: Integer
  property :gender, type: String

  has_one :in, :ticket



end
