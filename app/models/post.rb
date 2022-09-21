class Post < ApplicationRecord
  has_many :comments

  def display_title
    '#title'
  end
end
