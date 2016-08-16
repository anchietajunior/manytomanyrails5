class CreateSentences < ActiveRecord::Migration[5.0]
  def change
    create_table :sentences do |t|
      t.belongs_to :prison, foreign_key: true
      t.belongs_to :criminal, foreign_key: true

      t.timestamps
    end
  end
end
