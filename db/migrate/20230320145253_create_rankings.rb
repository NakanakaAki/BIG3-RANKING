class CreateRankings < ActiveRecord::Migration[6.0]
  def change
    create_table :rankings do |t|
      t.references :weight,             null: false, foreign_key: true
      t.references :user,               null: false, foreign_key: true
      t.timestamps
    end
  end
end
