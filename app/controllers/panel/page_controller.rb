module Panel
  class PageController < ApplicationController
    def index
      @pages = Page.all

      render 'panel/page/index', layout: 'table_list'
    end
  end
end
