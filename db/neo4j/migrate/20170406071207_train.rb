class Train < Neo4j::Migrations::Base
  def up
    add_constraint :Train, :uuid
  end

  def down
    drop_constraint :Train, :uuid
  end
end
