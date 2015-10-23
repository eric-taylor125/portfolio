class IndustriaController < ApplicationController
  before_action :set_industrium, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @industria = Industrium.all
    respond_with(@industria)
  end

  def show
    respond_with(@industrium)
  end

  def new
    @industrium = Industrium.new
    respond_with(@industrium)
  end

  def edit
  end

  def create
    @industrium = Industrium.new(industrium_params)
    @industrium.save
    respond_with(@industrium)
  end

  def update
    @industrium.update(industrium_params)
    respond_with(@industrium)
  end

  def destroy
    @industrium.destroy
    respond_with(@industrium)
  end

  private
    def set_industrium
      @industrium = Industrium.find(params[:id])
    end

    def industrium_params
      params.require(:industrium).permit(:nome)
    end
end
