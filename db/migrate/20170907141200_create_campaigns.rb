class CreateCampaigns < ActiveRecord::Migration[5.1]
  def change
    create_table :campaigns do |t|
      t.text :description
      t.float :goal

      t.timestamps
    end
  end
end
