class AsistanceesController < ApplicationController
  before_action :set_asistancee, only: [:show, :edit, :update, :destroy]

  # GET /asistancees
  # GET /asistancees.json
  def index
    @asistancees = Asistancee.all
  end

  # GET /asistancees/1
  # GET /asistancees/1.json
  def show
  end

  # GET /asistancees/new
  def new
    @asistancee = Asistancee.new
  end

  # GET /asistancees/1/edit
  def edit
  end

  # POST /asistancees
  # POST /asistancees.json
  def create
    @asistancee = Asistancee.new(asistancee_params)

    respond_to do |format|
      if @asistancee.save
        format.html { redirect_to @asistancee, notice: 'Asistancee was successfully created.' }
        format.json { render :show, status: :created, location: @asistancee }
      else
        format.html { render :new }
        format.json { render json: @asistancee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /asistancees/1
  # PATCH/PUT /asistancees/1.json
  def update
    respond_to do |format|
      if @asistancee.update(asistancee_params)
        format.html { redirect_to @asistancee, notice: 'Asistancee was successfully updated.' }
        format.json { render :show, status: :ok, location: @asistancee }
      else
        format.html { render :edit }
        format.json { render json: @asistancee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asistancees/1
  # DELETE /asistancees/1.json
  def destroy
    @asistancee.destroy
    respond_to do |format|
      format.html { redirect_to asistancees_url, notice: 'Asistancee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_asistancee
      @asistancee = Asistancee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def asistancee_params
      params.require(:asistancee).permit(:date_admisision, :student_id)
    end
end
