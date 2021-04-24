class AddProducerToMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :producer, :string
  end
end
