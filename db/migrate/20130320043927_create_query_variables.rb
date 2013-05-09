class CreateQueryVariables < ActiveRecord::Migration
  def self.up
    create_table :query_variables do |t|
      t.references :query
      t.string :name
      t.string :value

      t.timestamps
    end
  end

  def self.down
    drop_table :query_variables
  end
end
