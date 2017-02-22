class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.date :start_date
      t.date :end_date
      t.integer :word_goal

      t.timestamps
    end
  end
end
