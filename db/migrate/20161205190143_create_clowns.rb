class CreateClowns < ActiveRecord::Migration[5.0]
  def change
    create_table :clowns do |t|
      t.string :name
      t.string :style

      t.timestamps
    end
  end
end
