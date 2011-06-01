class WelcomeController < ApplicationController
  def index
  end

  def login
    redirect_to :controller => :produtos, :action => :index
  end
end
