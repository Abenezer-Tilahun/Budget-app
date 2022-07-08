class AddDescriptionToEntity < ActiveRecord::Migration[7.0]
  def change
    add_column :entities, :description, :text, default: ''
  end
end
