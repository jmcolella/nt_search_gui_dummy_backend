class CreateDocuments < ActiveRecord::Migration[5.0]
  def change
    create_table :documents do |t|
      t.string :name
      t.references :folder, index: true, foreign_key: true
      t.timestamps
    end
  end
end
