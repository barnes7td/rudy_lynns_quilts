class CreatePatterns < ActiveRecord::Migration
  def change
    create_table :patterns do |t|
      t.string   "title"
      t.text     "description"

      t.timestamps
    end
  end
end
