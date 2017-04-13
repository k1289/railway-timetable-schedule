class Ticket 
  include Neo4j::ActiveNode
  property :from, type: String
  property :to, type: String
  property :doj, type: Date
  
  has_one :in, :origin, type: :origin, model_class: :Station
  has_one :in, :destination, type: :destination, model_class: :Station
  has_one :out, :trainrun
  has_one :out, :passenger


end
