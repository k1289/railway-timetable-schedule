class Station < Neo4j::Migrations::Base
  def up
    add_constraint :Station, :uuid
  end

  def down
    drop_constraint :Station, :uuid
  end
end
