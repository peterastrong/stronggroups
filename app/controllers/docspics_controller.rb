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
    
  end

end
