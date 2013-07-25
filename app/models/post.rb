class Post
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Commentable

  field :title, type: String
  field :content, type: String

  belongs_to :user
  has_many :supports
#  has_many :comments
  has_many :views


  def pv
    views.count
  end
end
