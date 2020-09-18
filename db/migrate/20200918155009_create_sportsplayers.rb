class CreateSportsplayers < ActiveRecord::Migration[6.0]
  def change
    create_table :sportsplayers do |t|
      t.string :name
      t.integer :number
      t.string :position
      t.string :string
      t.string :sport

      t.timestamps
    end
  end
end
