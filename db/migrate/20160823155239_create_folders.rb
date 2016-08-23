class CreateFolders < ActiveRecord::Migration[5.0]
  def change
    create_table :folders do |t|
      t.string :name
      t.references :partition, index: true, foreign_key: true
      t.references :parent

      t.timestamps null: false
    end
  end
end
