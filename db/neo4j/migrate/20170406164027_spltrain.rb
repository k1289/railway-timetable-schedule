class Spltrain < Neo4j::Migrations::Base
  def up
    add_constraint :Spltrain, :uuid
  end

  def down
    drop_constraint :Spltrain, :uuid
  end
end
