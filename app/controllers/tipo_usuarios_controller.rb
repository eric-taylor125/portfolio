class TipoUsuariosController < ApplicationController
  before_action :set_tipo_de_usuario, only: [:show, :edit, :update, :destroy]

  # GET /TipoUsuarios
  # GET /TipoUsuarios.json
  def index
    @tipo_usuarios = TipoUsuario.all
  end

  # GET /TipoUsuarios/1
  # GET /TipoUsuarios/1.json
  def show
  end

  # GET /TipoUsuarios/new
  def new
    @tipo_usuario = TipoUsuario.new
  end

  # GET /TipoUsuarios/1/edit
  def edit
  end

  # POST /TipoUsuarios
  # POST /TipoUsuarios.json
  def create
    @tipo_usuario = TipoUsuario.new(tipo_de_usuario_params)

    respond_to do |format|
      if @tipo_usuario.save
        format.html { redirect_to @tipo_usuario, notice: 'Tipo de usuario was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tipo_usuario }
      else
        format.html { render action: 'new' }
        format.json { render json: @tipo_usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /TipoUsuarios/1
  # PATCH/PUT /TipoUsuarios/1.json
  def update
    respond_to do |format|
      if @tipo_usuario.update(tipo_de_usuario_params)
        format.html { redirect_to @tipo_usuario, notice: 'Tipo de usuario was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tipo_usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /TipoUsuarios/1
  # DELETE /TipoUsuarios/1.json
  def destroy
    @tipo_usuario.destroy
    respond_to do |format|
      format.html { redirect_to tipo_de_usuarios_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_de_usuario
      @tipo_usuario = TipoUsuario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_de_usuario_params
      params.require(:tipo_usuario).permit(:nome)
    end
end
