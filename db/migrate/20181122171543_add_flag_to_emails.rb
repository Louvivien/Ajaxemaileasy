class AddFlagToEmails < ActiveRecord::Migration[5.2]
  def change
    add_column :emails, :flag, :boolean
  end
end
