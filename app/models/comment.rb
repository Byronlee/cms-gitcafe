class Comment
  include Mongoid::Document
  include Mongoid::Timestamps
#  include Mongoid_Commentable::Comment

  attr_accessor :text, :author

  field :text, :type => String
  field :author, :type => String


end

