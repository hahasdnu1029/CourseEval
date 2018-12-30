class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |f|
      f.string :username
      f.string :coursename
      f.float :ratingone
      f.float :ratingtwo
      f.float :ratingthree
      f.string :description
      # Add fields that let Rails automatically keep track
      # of when movies are added or modified:
      f.timestamps
    end
  end
end
