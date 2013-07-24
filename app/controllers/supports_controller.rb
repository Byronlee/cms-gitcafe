
class SupportsController < ApplicationController

  def create
    if request.headers['X-PJAX']
      render :layout => false
    end
  end

end
