class PagesController < ApplicationController
  def home
    @users = User.all
    raise
  end

end
