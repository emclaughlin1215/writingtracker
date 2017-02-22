class CreateDailyCounts < ActiveRecord::Migration[5.0]
  def change
    create_table :daily_counts do |t|
      t.date :count_date
      t.integer :count
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
