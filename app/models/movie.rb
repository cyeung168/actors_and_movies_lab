class Movie < ActiveRecord::Base
  validates :title, presence: true
  has_many :actor_movies
  has_many :actors, through: :actor_movies
end