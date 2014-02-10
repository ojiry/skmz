class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.references :anime, index: true
      t.references :character, index: true

      t.timestamps
    end
  end
end
