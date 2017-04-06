class Schedule < Neo4j::Migrations::Base
  def up
    add_constraint :Schedule, :uuid
  end

  def down
    drop_constraint :Schedule, :uuid
  end
end
