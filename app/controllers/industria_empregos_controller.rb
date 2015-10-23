class IndustriaEmpregosController < ApplicationController
  before_action :set_industria_emprego, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @industria_empregos = IndustriaEmprego.all
    respond_with(@industria_empregos)
  end

  def show
    respond_with(@industria_emprego)
  end

  def new
    @industria_emprego = IndustriaEmprego.new
    respond_with(@industria_emprego)
  end

  def edit
  end

  def create
    @industria_emprego = IndustriaEmprego.new(industria_emprego_params)
    @industria_emprego.save
    respond_with(@industria_emprego)
  end

  def update
    @industria_emprego.update(industria_emprego_params)
    respond_with(@industria_emprego)
  end

  def destroy
    @industria_emprego.destroy
    respond_with(@industria_emprego)
  end

  private
    def set_industria_emprego
      @industria_emprego = IndustriaEmprego.find(params[:id])
    end

    def industria_emprego_params
      params.require(:industria_emprego).permit(:id_industria, :id_emprego)
    end
end
