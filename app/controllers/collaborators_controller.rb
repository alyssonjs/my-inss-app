class CollaboratorsController < ApplicationController
  before_action :require_user
  before_action :set_collaborator, only: %i[ show edit update destroy ]

  # GET /collaborators or /collaborators.json
  def index
    @collaborators = Collaborator.order(:created_at).all
  end

  # GET /collaborators/1 or /collaborators/1.json
  def show
  end

  # GET /collaborators/new
  def new
    @collaborator = Collaborator.new
  end

  # GET /collaborators/1/edit
  def edit
  end

  def call
    salary = params[:salary]

    @response = Collaborators::Inss.new(salary)

    @response.prepare_inss

    respond_to do |format|
        format.js { render json: @response.prepare_inss, status: :ok }
      end
  end

  # POST /collaborators or /collaborators.json
  def create
    @collaborator = Collaborator.new(collaborator_params)
    @collaborator.user_id = @current_user.id
    respond_to do |format|
      if @collaborator.save
        format.html { redirect_to @collaborator, notice: "Collaborator was successfully created." }
        format.json { render :show, status: :created, location: @collaborator }
        format.js
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @collaborator.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /collaborators/1 or /collaborators/1.json
  def update
    respond_to do |format|
      if @collaborator.update(collaborator_params)
         @collaborator.user_id = @current_user.id
        format.html { redirect_to @collaborator, notice: "Colaborador foi editado com sucesso!!." }
        format.json { render :show, status: :ok, location: @collaborator }
        format.js

      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @collaborator.errors, status: :unprocessable_entity }
        format.js

      end
    end
  end

  # DELETE /collaborators/1 or /collaborators/1.json
  def destroy
    @collaborator.destroy
    respond_to do |format|
      format.html { redirect_to collaborators_url, notice: "Colaborador removido com sucesso!!" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_collaborator
      @collaborator = Collaborator.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def collaborator_params
      params.require(:collaborator).permit(:name, :cpf, :birthday, :address, :number, :neighborhood, :city, :state, :postal_code, :personal_phone_number, :reference, :reference_phone_number, :salary, :inss)
    end
end
