module Panel
  class PageController < ApplicationController
    def index
      @pages = Page.all
    end
  end
end
