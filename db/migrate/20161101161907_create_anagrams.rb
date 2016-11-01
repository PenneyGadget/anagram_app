class CreateAnagrams < ActiveRecord::Migration
  def change
    create_table :anagrams do |t|
      t.string :word

      t.timestamps null: false
    end
  end
end
