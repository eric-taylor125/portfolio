class ProvinciaEmpregosController < ApplicationController
  before_action :set_provincia_emprego, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @provincia_empregos = ProvinciaEmprego.all
    respond_with(@provincia_empregos)
  end

  def show
    respond_with(@provincia_emprego)
  end

  def new
    @provincia_emprego = ProvinciaEmprego.new
    respond_with(@provincia_emprego)
  end

  def edit
  end

  def create
    @provincia_emprego = ProvinciaEmprego.new(provincia_emprego_params)
    @provincia_emprego.save
    respond_with(@provincia_emprego)
  end

  def update
    @provincia_emprego.update(provincia_emprego_params)
    respond_with(@provincia_emprego)
  end

  def destroy
    @provincia_emprego.destroy
    respond_with(@provincia_emprego)
  end

  private
    def set_provincia_emprego
      @provincia_emprego = ProvinciaEmprego.find(params[:id])
    end

    def provincia_emprego_params
      params.require(:provincia_emprego).permit(:id_provincia, :id_emprego)
    end
end
