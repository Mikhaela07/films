class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|

      t.string :role
      t.string :sex
      t.belongs_to :film
      t.belongs_to :actor
      t.timestamps
    end
  end
end
