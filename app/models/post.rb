class Post
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :title, type: String
  field :content, type: String

  belongs_to :user
  has_many :supports
  has_many :comments
  has_many :views
end
