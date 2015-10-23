class FuncaoEmpregosController < ApplicationController
  before_action :set_funcao_emprego, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @funcao_empregos = FuncaoEmprego.all
    respond_with(@funcao_empregos)
  end

  def show
    respond_with(@funcao_emprego)
  end

  def new
    @funcao_emprego = FuncaoEmprego.new
    respond_with(@funcao_emprego)
  end

  def edit
  end

  def create
    @funcao_emprego = FuncaoEmprego.new(funcao_emprego_params)
    @funcao_emprego.save
    respond_with(@funcao_emprego)
  end

  def update
    @funcao_emprego.update(funcao_emprego_params)
    respond_with(@funcao_emprego)
  end

  def destroy
    @funcao_emprego.destroy
    respond_with(@funcao_emprego)
  end

  private
    def set_funcao_emprego
      @funcao_emprego = FuncaoEmprego.find(params[:id])
    end

    def funcao_emprego_params
      params.require(:funcao_emprego).permit(:id_funcao, :id_emprego)
    end
end
