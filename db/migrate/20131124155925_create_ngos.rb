class CreateNgos < ActiveRecord::Migration
  def change
    create_table :ngos do |t|
      t.string :name , unique: true
      t.text :description

      t.timestamps
    end
  end
end
