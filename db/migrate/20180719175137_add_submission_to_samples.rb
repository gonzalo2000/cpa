class AddSubmissionToSamples < ActiveRecord::Migration[5.2]
  def change
    add_column :samples, :submission, :string
  end
end
