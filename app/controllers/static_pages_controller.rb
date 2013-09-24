class StaticPagesController < ApplicationController
  def home
    if signed_in?
      @micropost = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def help
  end

  def about
  end

  def contact
  end

  def publicrelations
  end

  def faq
  end

  def howitworks
  end

  def startaproject
  end

  def suggestaproject
  end

  def successstories    
  end

  def donate    
  end
end
