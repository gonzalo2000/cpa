class AddInstructionToSamples < ActiveRecord::Migration[5.2]
  def change
    add_column :samples, :instruction, :string
  end
end
