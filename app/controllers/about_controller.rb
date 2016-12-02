class AboutController < ApplicationController
  def index
  	@contents = Content.all
  end
end
