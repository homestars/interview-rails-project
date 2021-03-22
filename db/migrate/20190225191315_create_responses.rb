class CreateResponses < ActiveRecord::Migration[5.1]
  def change
    create_table :responses do |t|
      t.references :question, foreign_key: true
      t.references :answer, foreign_key: true
      t.references :interview, foreign_key: true

      t.timestamps
    end
  end
end
