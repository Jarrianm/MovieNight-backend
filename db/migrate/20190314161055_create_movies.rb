class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :plot
      t.string :backdrop_path
      t.string :poster_img
      t.string :release_date
      t.string :category
      
      t.timestamps
    end


  end
end
