class CreateResponsables < ActiveRecord::Migration[6.0]
  def change
    create_table :responsables do |t|
      t.string :name
      t.string :type
      t.integer :phone

      t.timestamps
    end
  end
end
