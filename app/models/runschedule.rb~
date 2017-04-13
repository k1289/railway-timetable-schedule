class Runschedule 
  include Neo4j::ActiveNode
  property :newarrtime, type: Time
  property :newdepttime, type: Time
  property :newplatformnum, type: Integer
  
  has_one :out, :station
  has_one :in, :trainrun



end
