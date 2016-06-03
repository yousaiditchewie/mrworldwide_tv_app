class Video < ActiveRecord::Base
  has_and_belongs_to_many :tags

  validates :title, presence: true
  validates :youtube_id, presence: true, uniqueness: true

  before_save :set_released_on

  private
  def set_released_on
    self.released_on ||= Date.today
  end
end
