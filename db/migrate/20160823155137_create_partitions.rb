class CreatePartitions < ActiveRecord::Migration[5.0]
  def change
    create_table :partitions do |t|

      t.timestamps
    end
  end
end
