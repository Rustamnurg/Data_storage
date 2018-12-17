class CreateNewItems < ActiveRecord::Migration[5.2]
  def change
    create_table :new_items do |t|
      t.string :title
      t.text :content
      t.text :url
      t.text :description
      t.string :url
      t.string :url_to_image
      t.string :author

      t.timestamps
    end
  end
end
