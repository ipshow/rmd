class Post
  include Mongoid::Document
  include Mongoid::Timestamps
  field :content, type: String
  embeds_many :comments   # like ActiveRecord's "has_many"
  validates_length_of :content, minimum: 6, maximum: 300
end
