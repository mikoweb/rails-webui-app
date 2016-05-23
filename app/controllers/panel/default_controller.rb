class Panel::DefaultController < ApplicationController
  def index
    render 'panel/default/index.liquid'
  end
end
