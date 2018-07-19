class CreateSamples < ActiveRecord::Migration[5.2]
  def change
    create_table :samples do |t|
      t.string :language
      t.integer :level
      t.integer :score
      t.string :mode
      t.text :comment

      t.timestamps
    end
  end
end
