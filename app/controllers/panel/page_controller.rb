class Panel::PageController < ApplicationController
  def index
    render 'panel/page/index.liquid', :locals => {
        :pages => Page.all,
    }
  end
end
