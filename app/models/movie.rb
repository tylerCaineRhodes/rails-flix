class Movie < ApplicationRecord
  before_save :set_slug

  has_many :reviews, -> { order(created_at: :desc) }, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :fans, through: :favorites, source: :user
  has_many :characterizations, dependent: :destroy
  has_many :genres, through: :characterizations

  validates :title, presence: true, uniqueness: true
  validates  :released_on, :duration, presence: true
  validates :description, length: { minimum: 25 }
  validates :total_gross, numericality: { greater_than_or_equal_to: 0 }
  validates :image_file_name, format: {
    with: /\w+\.(jpg|png)\z/i,
    message: 'must be a JPG or PNG image'
  }

  RATINGS = %w[G PG PG-13 R NC-17]
  validates :rating, inclusion: { in: RATINGS }

  scope :released, -> { where('released_on < ?', Time.now).order('released_on desc') }

  scope :upcoming, -> { where('released_on > ?', Time.now).order('released_on asc') }
  scope :recent, lambda { |max=5| released.limit(max) }
  scope :hits, -> { where('total_gross >= ?', 300_000_000).order('total_gross desc')}
  scope :flops, -> { where('total_gross < ?', 22_500_000).order('total_gross asc')}
  scope :recentlyAdded, -> { order('created_at desc').limit(3)}

  def isFlop?
    total_gross < 25_000_000
  end

  def average_stars
    reviews.average(:stars) || 0.0
  end

  def average_stars_as_percent
    (average_stars / 5.0) * 100
  end

  def to_param
    slug
  end

  private
    def set_slug
      self.slug = title.parameterize
    end
end
