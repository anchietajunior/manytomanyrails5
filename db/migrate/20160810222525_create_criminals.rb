class CreateCriminals < ActiveRecord::Migration[5.0]
  def change
    create_table :criminals do |t|
      t.string :name
      t.references :prison, foreign_key: true

      t.timestamps
    end
  end
end
