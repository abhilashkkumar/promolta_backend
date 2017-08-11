class AddReferencesToEmail < ActiveRecord::Migration
  def change
  	add_reference :emails, :user, index: true, foreign_key: false
  	add_reference :emails, :email, index: true, foreign_key: false
  end
end
