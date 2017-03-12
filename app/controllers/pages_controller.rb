class PagesController < ApplicationController
  def landing
    unless current_user
      render "landing.html.erb"
    else
      redirect_to '/user'
    end
  end

  def about
    render "about.html.erb"
  end

end
