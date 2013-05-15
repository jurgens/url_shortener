class AddShortUrlToUrls < ActiveRecord::Migration
  def change
  	add_column :urls, :url_short, :string
  end
end
