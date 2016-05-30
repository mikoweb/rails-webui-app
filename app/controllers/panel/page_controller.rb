module Panel
  class PageController < ApplicationController
    def get_index
      @pages = Page.all

      render 'panel/page/index', layout: 'table_list'
    end

    def get_new
      @page = Page.new

      render 'panel/page/new'
    end

    def post_new
      @page = Page.new

      render 'panel/page/new'
    end

    def get_edit

    end

    def put_edit

    end
  end
end
