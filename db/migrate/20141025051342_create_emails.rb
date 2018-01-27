class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :emailaddress
      t.integer :downloadid
      t.string :ip

      t.timestamps
    end
  end
end
