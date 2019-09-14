class CreateImgclrs < ActiveRecord::Migration[6.0]
  def change
    create_table :imgclrs do |t|
      t.string :imagelink
      t.string :colorhex

      t.timestamps
    end
  end
end
