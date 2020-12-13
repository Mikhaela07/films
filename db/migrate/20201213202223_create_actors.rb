class CreateActors < ActiveRecord::Migration[6.0]
  def change
    create_table :actors do |t|
      t.string :name
      t.date :birthdate
      t.string :birthplace
      t.string :horoscope
      t.string :votes
      t.timestamps
    end
  end
end
