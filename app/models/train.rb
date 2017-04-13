class Train 
  include Neo4j::ActiveNode
  property :number, type: Integer
  property :name, type: String
  property :totalcapacity, type: Integer
  property :type, type: String
  property :starttime, type: Time
  property :endtime, type: Time
  property :rundays, type: String

  has_many :both, :station
  has_one :out, :origin, type: :origin, model_class: :Station
  has_one :out, :destination, type: :destination, model_class: :Station
  has_many :in, :ticket
  has_many :both, :schedule
  has_many :in, :trainrun
  
end
