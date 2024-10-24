class PageTagsController < ApplicationController
  def index
    @page_tags = PageTag.all
  end

  def show
    @page_tag = PageTag.find(params[:id])
    @page_tag_users = @page_tag.page_tag_users.includes(:user)
  end
end
