class Show < ActiveRecord::Base
  def self.highest_rating
    # this test actually wants you to return the rating
    Show.order(rating: :desc).first[:rating]
  end

  def self.most_popular_show
    Show.order(rating: :desc).first
  end

  def self.lowest_rating
    Show.order(rating: :desc).last[:rating]
  end

  def self.least_popular_show
    Show.order(rating: :desc).last
  end

  def self.ratings_sum
    Show.sum(:rating)
  end

  def self.popular_shows
    Show.where("rating > ?", 5)
  end

  def self.shows_by_alphabetical_order
    Show.order(:name)
  end

end ## <<-- end of Show class
