class CreatePremieres < ActiveRecord::Migration[6.0]
  def change
    create_table :premieres do |t|
      t.date :date
      t.integer :budget
      t.belongs_to :film
      t.timestamps
    end
  end
end
