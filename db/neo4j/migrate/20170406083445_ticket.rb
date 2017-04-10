class Ticket < Neo4j::Migrations::Base
  def up
    add_constraint :Ticket, :uuid
  end

  def down
    drop_constraint :Ticket, :uuid
  end
end
