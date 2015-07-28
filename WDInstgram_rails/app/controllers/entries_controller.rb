class EntriesController < ApplicationController
  def index

  @entries = Entry.all
  render "index"
  end

  def new
    @entry = Entry.new

  end

  def create
    @entry= Entry.new
    redirect_to "/entries/#{@entry.id}"
  end

  def edit
    @entry = Entry.find(params[:id])

  end

  def update
    @entry = Entry.find(params[:id])
    @entry.update(params[:entry])
    redirect_to "/entries/#{@entry.id}"
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def delete
    @entry = Entry.find(params[:id])
    @entry = Entry.destroy
    redirect_to "/"
  end

end
