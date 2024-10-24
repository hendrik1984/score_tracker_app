class CreatePageTagUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :page_tag_users do |t|
      t.references :user, null: false, foreign_key: true
      t.references :page_tag, null: false, foreign_key: true
      t.integer :points

      t.timestamps
    end
  end
end
