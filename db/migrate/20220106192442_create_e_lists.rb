class CreateELists < ActiveRecord::Migration[5.1]
  def change
    create_table :e_lists do |t|
      t.string :Was?
      t.string :Menge
      t.string :Wo?
      t.boolean :Done, default: false

      t.timestamps
    end
  end
end
