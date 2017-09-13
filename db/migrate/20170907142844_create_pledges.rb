class CreatePledges < ActiveRecord::Migration[5.1]
  def change
    create_table :pledges do |t|
      t.references :campaign, foreign_key: true
      t.float :amount
      t.string :name
      t.boolean :anonymous

      t.timestamps
    end
  end
end
