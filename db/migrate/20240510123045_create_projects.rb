class CreateProjects < ActiveRecord::Migration[7.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.references :season, null: false, foreign_key: true
      t.boolean :public

      t.timestamps
    end
  end
end
