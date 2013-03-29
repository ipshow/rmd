class Comment
  include Mongoid::Document
  include Mongoid::Timestamps
  field :comment_content, type: String
  belongs_to :post
end