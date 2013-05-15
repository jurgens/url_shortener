class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :url_long
      t.boolean :private
      t.string :password_digest

      t.timestamps
    end
  end
end
