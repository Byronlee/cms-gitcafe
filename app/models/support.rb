class Support
  include Mongoid::Document
  field :state, type: Boolean ,dafault: false

  belongs_to :post


#  def create
#    create(user: current_user,post_id: params[post:id])
#  end

end
