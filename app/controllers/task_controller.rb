class TaskController < ApplicationController
  before_filter :authenticate
  def index
    @task=current_user.tasks.all
    respond_to do |format|
      format.html
      format.json { render :json => @items}
    end
  end

  def show
  end

  def new
  end

end
