class CreateTvShows < ActiveRecord::Migration[5.0]
  def change
    create_table :tv_shows do |t|
      t.string :name
      t.time :timing
      t.references :tv_channel, foreign_key: true

      t.timestamps
    end
  end
end
