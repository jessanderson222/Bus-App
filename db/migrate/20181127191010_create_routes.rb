class CreateRoutes < ActiveRecord::Migration[5.2]
  def change
    create_table :routes do |t|
      t.string :name
      t.references :bus, foreign_key: true
      t.references :person, foreign_key: true

      t.timestamps
    end
  end
end
