class CreatePartyMovie < ActiveRecord::Migration[7.0]
  def change
    create_table :party_movies do |t|
      t.references :movie, null: false, foreign_key: true
      t.references :party, null: false, foreign_key: true

      t.timestamps
    end
  end
end
