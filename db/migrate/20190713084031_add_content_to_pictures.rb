class AddContentToPictures < ActiveRecord::Migration[5.2]
  def change
    add_column :pictures, :content, :text
  end
end
