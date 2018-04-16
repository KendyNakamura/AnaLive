class AddMovieIdToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :movie_id, :string
  end
end
