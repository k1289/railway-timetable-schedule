class Runschedule < Neo4j::Migrations::Base
  def up
    add_constraint :Runschedule, :uuid
  end

  def down
    drop_constraint :Runschedule, :uuid
  end
end
