class MemoriumController < ApplicationController
  def index
  end

  def funeral
  end

  def obituary
  end

  def picture
  end
  
  def blog
    @comments = Comment.find(:all, :order => :sort_order)
  end

end
