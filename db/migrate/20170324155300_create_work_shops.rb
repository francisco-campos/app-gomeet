class CreateWorkShops < ActiveRecord::Migration[5.0]
  def change
    create_table :work_shops do |t|
      t.string :title
      t.text :about
      t.text :location
      t.text :requirements
      t.text :includes
      t.string :group_size
      t.text :about_host
      t.boolean :active

      t.timestamps
    end
  end
end
