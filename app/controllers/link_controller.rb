class LinkController < ApplicationController
  def index
    @courses = Course.all
  end

  def course
  end

  def lecturer
  end

  def about
  end
end
