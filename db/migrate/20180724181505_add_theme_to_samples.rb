class AddThemeToSamples < ActiveRecord::Migration[5.2]
  def change
    add_column :samples, :theme, :string
  end
end
