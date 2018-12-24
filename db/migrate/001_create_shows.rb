class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      # name, network, and day have a datatype of string,
      # and rating has a datatype of integer.
      t.string :name
      t.string :network
      t.string :day
      t.integer :rating
    end
  end
end ## <<-- end of CreateShows class
