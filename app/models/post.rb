class Post
  include Mongoid::Document
  field :name, type: String
  field :title, type: String
  field :content, type: String

  belongs_to :user
  has_many :supports

end
