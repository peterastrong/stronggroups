class PagesController < ApplicationController
  def index
    unless current_user
      render "index.html.erb"
    else
      redirect_to '/user'
    end
  end
end
