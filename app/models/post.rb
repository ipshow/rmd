class Post
  include Mongoid::Document
  include Mongoid::Timestamps
  field :title, type: String
  field :content, type: String
  belongs_to :user
  has_many :comments
  validates_length_of :content, minimum: 6, maximum: 300
  validates :user_id, presence: true
  validates :title, presence: true
end
