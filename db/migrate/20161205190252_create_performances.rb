class CreatePerformances < ActiveRecord::Migration[5.0]
  def change
    create_table :performances do |t|
      t.string :location
      t.datetime :time
      t.references :performer, polymorphic: true
      t.timestamps
    end
  end
end
