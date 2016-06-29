class CreateCadastros < ActiveRecord::Migration
  def change
    create_table :cadastros do |t|
      t.date :dateC
      t.string :name
      t.string :proced
      t.string :hd
      t.text :obs
      t.date :dateE
      t.integer :volume
      t.integer :concent
      t.string :number
      t.string :local

      t.timestamps null: false
    end
  end
end
