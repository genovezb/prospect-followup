class AddResponsableToConstructions < ActiveRecord::Migration[6.0]
  def change
    add_reference :constructions, :responsable, null: false, foreign_key: true
  end
end
