class CreateAnimes < ActiveRecord::Migration
  def change
    create_table :animes do |t|
      t.string :title
      t.date :start_on
      t.date :end_on

      t.timestamps
    end
  end
end
