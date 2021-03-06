class StaticPagesController < ApplicationController
  def home
    if signed_in?
      @micropost = current_user.microposts.build if signed_in?
      @feed_items = current_user.feed.paginate(page: params[:page], per_page: 2)
    end
  end

  def help
  end

  def about
  end
  def contact
  end
end
