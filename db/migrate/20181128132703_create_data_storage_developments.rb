class CreateDataStorageDevelopments < ActiveRecord::Migration[5.2]
  def change
    create_table :data_storage_developments do |t|
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
