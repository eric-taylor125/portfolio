class EstadoPropostaController < ApplicationController
  before_action :set_estado_propostum, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @estado_proposta = EstadoPropostum.all
    respond_with(@estado_proposta)
  end

  def show
    respond_with(@estado_propostum)
  end

  def new
    @estado_propostum = EstadoPropostum.new
    respond_with(@estado_propostum)
  end

  def edit
  end

  def create
    @estado_propostum = EstadoPropostum.new(estado_propostum_params)
    @estado_propostum.save
    respond_with(@estado_propostum)
  end

  def update
    @estado_propostum.update(estado_propostum_params)
    respond_with(@estado_propostum)
  end

  def destroy
    @estado_propostum.destroy
    respond_with(@estado_propostum)
  end

  private
    def set_estado_propostum
      @estado_propostum = EstadoPropostum.find(params[:id])
    end

    def estado_propostum_params
      params.require(:estado_propostum).permit(:nome)
    end
end
