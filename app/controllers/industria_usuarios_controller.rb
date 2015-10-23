class IndustriaUsuariosController < ApplicationController
  before_action :set_industria_usuario, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @industria_usuarios = IndustriaUsuario.all
    respond_with(@industria_usuarios)
  end

  def show
    respond_with(@industria_usuario)
  end

  def new
    @industria_usuario = IndustriaUsuario.new
    respond_with(@industria_usuario)
  end

  def edit
  end

  def create
    @industria_usuario = IndustriaUsuario.new(industria_usuario_params)
    @industria_usuario.save
    respond_with(@industria_usuario)
  end

  def update
    @industria_usuario.update(industria_usuario_params)
    respond_with(@industria_usuario)
  end

  def destroy
    @industria_usuario.destroy
    respond_with(@industria_usuario)
  end

  private
    def set_industria_usuario
      @industria_usuario = IndustriaUsuario.find(params[:id])
    end

    def industria_usuario_params
      params.require(:industria_usuario).permit(:id_industria, :id_usuario)
    end
end
