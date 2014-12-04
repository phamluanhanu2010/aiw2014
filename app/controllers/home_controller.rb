class HomeController < ApplicationController
  def index
    @AllPaint=Paint.all
  end

  def categories

  end

  def details

  end

  def search

  end

  def sample
    
  end
  def gallery_single
  @Picture=Paint.find(params[:id])
  end
end
