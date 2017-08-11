class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :to
      t.string :from
      t.string :body
      t.boolean :is_sent
      t.boolean :is_draft
      t.boolean :is_trash
      t.boolean :is_read

      t.timestamps null: false
    end
  end
end
