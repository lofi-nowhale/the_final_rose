class CreateOutings < ActiveRecord::Migration[7.0]
  def change
    create_table :outings do |t|
      t.string :name
      t.string :location
      t.string :date
      t.references :contestant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
