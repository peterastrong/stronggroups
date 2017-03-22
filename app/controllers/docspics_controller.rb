class DocspicsController < ApplicationController
  def index
    @documents = Docpic.all 
  end

  def new
    @document = Docpic.new
  end

  def show
    # maybe later?
  end

  def create
    @document = Docpic.new(document: params[:document], title: params[:title], subgroup_id: params[:subgroup_id], user_id: current_user.id)
    @document.save
    flash[:success] = "Your document was added."
    redirect_to "/user"
  end

end
