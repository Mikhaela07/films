class PremieresController < ApplicationController
  before_action :set_premiere, only: [:show, :edit, :update, :destroy]

  # GET /premieres
  # GET /premieres.json
  def index
    @premieres = Premiere.all
  end

  # GET /premieres/1
  # GET /premieres/1.json
  def show
  end

  # GET /premieres/new
  def new
    @premiere = Premiere.new
  end

  # GET /premieres/1/edit
  def edit
  end

  # POST /premieres
  # POST /premieres.json
  def create
    @premiere = Premiere.new(premiere_params)

    respond_to do |format|
      if @premiere.save
        format.html { redirect_to @premiere, notice: 'Premiere was successfully created.' }
        format.json { render :show, status: :created, location: @premiere }
      else
        format.html { render :new }
        format.json { render json: @premiere.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /premieres/1
  # PATCH/PUT /premieres/1.json
  def update
    respond_to do |format|
      if @premiere.update(premiere_params)
        format.html { redirect_to @premiere, notice: 'Premiere was successfully updated.' }
        format.json { render :show, status: :ok, location: @premiere }
      else
        format.html { render :edit }
        format.json { render json: @premiere.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /premieres/1
  # DELETE /premieres/1.json
  def destroy
    @premiere.destroy
    respond_to do |format|
      format.html { redirect_to premieres_url, notice: 'Premiere was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_premiere
      @premiere = Premiere.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def premiere_params
      params.require(:premiere).permit(:date, :budget)
    end
end
