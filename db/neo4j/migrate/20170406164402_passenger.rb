class Passenger < Neo4j::Migrations::Base
  def up
    add_constraint :Passenger, :uuid
  end

  def down
    drop_constraint :Passenger, :uuid
  end
end
