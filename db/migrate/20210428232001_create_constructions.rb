class CreateConstructions < ActiveRecord::Migration[6.0]
  def change
    create_table :constructions do |t|
      t.string :street
      t.integer :number
      t.string :complement
      t.string :city
      t.string :state
      t.string :detail

      t.timestamps
    end
  end
end
