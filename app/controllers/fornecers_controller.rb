class FornecersController < ApplicationController
  before_action :set_fornecer, only: [:show, :edit, :update, :destroy]

  # GET /fornecers
  # GET /fornecers.json
  def index
    @fornecers = Fornecer.all
  end

  # GET /fornecers/1
  # GET /fornecers/1.json
  def show
  end

  # GET /fornecers/new
  def new
    @fornecer = Fornecer.new
  end

  # GET /fornecers/1/edit
  def edit
  end

  # POST /fornecers
  # POST /fornecers.json
  def create
    @fornecer = Fornecer.new(fornecer_params)

    respond_to do |format|
      if @fornecer.save
        format.html { redirect_to @fornecer, notice: 'Fornecer was successfully created.' }
        format.json { render :show, status: :created, location: @fornecer }
      else
        format.html { render :new }
        format.json { render json: @fornecer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fornecers/1
  # PATCH/PUT /fornecers/1.json
  def update
    respond_to do |format|
      if @fornecer.update(fornecer_params)
        format.html { redirect_to @fornecer, notice: 'Fornecer was successfully updated.' }
        format.json { render :show, status: :ok, location: @fornecer }
      else
        format.html { render :edit }
        format.json { render json: @fornecer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fornecers/1
  # DELETE /fornecers/1.json
  def destroy
    @fornecer.destroy
    respond_to do |format|
      format.html { redirect_to fornecers_url, notice: 'Fornecer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fornecer
      @fornecer = Fornecer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fornecer_params
      params.require(:fornecer).permit(:cod_fornecedor, :nome_fornecedor)
    end
end
