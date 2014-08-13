class AddRestosToReviews < ActiveRecord::Migration
  def change
    add_reference :reviews, :resto, index: true
  end
end

#table en 1er