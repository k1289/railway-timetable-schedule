class Station 
  include Neo4j::ActiveNode
  property :name, type: String
  property :numplatform, type: Integer

  has_many :both, :train
  has_many :in, :runschedule
  has_many :out, :ticket
  has_many :in, :schedule
  has_many :in, :train, type: :origin, model_class: :train
  has_many :in, :train, type: :destination, model_class: :train
end
