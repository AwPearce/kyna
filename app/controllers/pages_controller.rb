class PagesController < ApplicationController
  def home
    @last = Article.last
    @second_last = Article.offset(1).last
    @third_last = Article.offset(2).last
  end

  def about
  end
end
