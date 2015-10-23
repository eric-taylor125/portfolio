class CurriculosEmpregosController < ApplicationController
  before_action :set_curriculos_emprego, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @curriculos_empregos = CurriculosEmprego.all
    respond_with(@curriculos_empregos)
  end

  def show
    respond_with(@curriculos_emprego)
  end

  def new
    @curriculos_emprego = CurriculosEmprego.new
    respond_with(@curriculos_emprego)
  end

  def edit
  end

  def create
    @curriculos_emprego = CurriculosEmprego.new(curriculos_emprego_params)
    @curriculos_emprego.save
    respond_with(@curriculos_emprego)
  end

  def update
    @curriculos_emprego.update(curriculos_emprego_params)
    respond_with(@curriculos_emprego)
  end

  def destroy
    @curriculos_emprego.destroy
    respond_with(@curriculos_emprego)
  end

  private
    def set_curriculos_emprego
      @curriculos_emprego = CurriculosEmprego.find(params[:id])
    end

    def curriculos_emprego_params
      params.require(:curriculos_emprego).permit(:id_emprego, :id_curriculo)
    end
end
