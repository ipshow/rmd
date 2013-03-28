class Post
  include Mongoid::Document
  include Mongoid::Timestamps
  field :content, type: String
  field :user_id, type: Integer
  has_many :comments
  validates_length_of :content, minimum: 6, maximum: 300
end
