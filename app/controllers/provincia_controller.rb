class ProvinciaController < ApplicationController
  before_action :set_provincium, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @provincia = Provincium.all
    respond_with(@provincia)
  end

  def show
    respond_with(@provincium)
  end

  def new
    @provincium = Provincium.new
    respond_with(@provincium)
  end

  def edit
  end

  def create
    @provincium = Provincium.new(provincium_params)
    @provincium.save
    respond_with(@provincium)
  end

  def update
    @provincium.update(provincium_params)
    respond_with(@provincium)
  end

  def destroy
    @provincium.destroy
    respond_with(@provincium)
  end

  private
    def set_provincium
      @provincium = Provincium.find(params[:id])
    end

    def provincium_params
      params.require(:provincium).permit(:nome)
    end
end
