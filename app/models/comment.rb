class Comment
  include Mongoid::Document
  include Mongoid::Timestamps
  field :comment_content, type: String
  embedded_in :post    #like ActiveRecord's "belongs_to"
end
