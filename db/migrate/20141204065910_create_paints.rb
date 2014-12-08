class CreatePaints < ActiveRecord::Migration
  def change
    create_table :paints do |t|
      t.string :name
      t.string :author
      t.integer :date
      t.text :intro
      t.string :image

      t.timestamps
    end
  end
end
