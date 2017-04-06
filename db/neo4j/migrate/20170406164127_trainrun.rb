class Trainrun < Neo4j::Migrations::Base
  def up
    add_constraint :Trainrun, :uuid
  end

  def down
    drop_constraint :Trainrun, :uuid
  end
end
