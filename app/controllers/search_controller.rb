class SearchController < ApplicationController
  before_action :authenticate_user!

  def search
    @model = params[:model]
    @content = params[:content]
    @method = params[:method]
    if @model == "user"
      @datas = User.search_for(@content,@method)
    else
      @datas = Book.search_for(@content, @method)
    end
  end

end
