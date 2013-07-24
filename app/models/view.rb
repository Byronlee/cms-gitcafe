class View
  include Mongoid::Document
  include Mongoid::Timestamps
#  field :state, type: Boolean, dafault: false

  belongs_to :post
  belongs_to :user
  
end
