class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :likes
  has_many :liked_users, through: :likes, source: :user
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :store
  belongs_to_active_hash :product


  validates :product_name, :image1, :point, :result, :appeal, presence: true
  
  validates_acceptance_of :confirming, allow_nil: false
  after_validation :check_confirming

  mount_uploader :image1, ImageUploader
  mount_uploader :image2, ImageUploader
  mount_uploader :image3, ImageUploader

  def check_confirming
    errors.delete(:confirming)
    self.confirming = errors.empty? ? '1' : ''
  end
end
