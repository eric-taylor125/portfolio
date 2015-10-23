class FuncaoUsuariosController < ApplicationController
  before_action :set_funcao_usuario, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @funcao_usuarios = FuncaoUsuario.all
    respond_with(@funcao_usuarios)
  end

  def show
    respond_with(@funcao_usuario)
  end

  def new
    @funcao_usuario = FuncaoUsuario.new
    respond_with(@funcao_usuario)
  end

  def edit
  end

  def create
    @funcao_usuario = FuncaoUsuario.new(funcao_usuario_params)
    @funcao_usuario.save
    respond_with(@funcao_usuario)
  end

  def update
    @funcao_usuario.update(funcao_usuario_params)
    respond_with(@funcao_usuario)
  end

  def destroy
    @funcao_usuario.destroy
    respond_with(@funcao_usuario)
  end

  private
    def set_funcao_usuario
      @funcao_usuario = FuncaoUsuario.find(params[:id])
    end

    def funcao_usuario_params
      params.require(:funcao_usuario).permit(:id_funcao, :id_usuario)
    end
end
