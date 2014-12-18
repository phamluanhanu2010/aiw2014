class HomeController < ApplicationController
  def index
    @AllPaint=Paint.all
    @FeaturePaint=Paint.all.limit(12)
    @LimitNews=News.order("RAND(id)").first
    @FeatureNews=News.last
  end

  def detailnews
    @detailNews=News.find(params[:id])
    @popularNews=News.last(3)
  end

  def news
   @AllNews=News.all
   @FeatureNews=News.last
  end

  def gallery_single
  @Picture=Paint.find(params[:id])
  end
  def gallery
  @AllPaint=Paint.all
  end



end
