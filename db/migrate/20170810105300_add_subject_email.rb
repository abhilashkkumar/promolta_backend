class AddSubjectEmail < ActiveRecord::Migration
  def change
  	add_column :emails, :subject, :string
  end
end
