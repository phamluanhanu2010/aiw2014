class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.text :description
      t.text :content
      t.string :image
      t.string :imagename
      t.string :author

      t.timestamps
    end
  end
end
