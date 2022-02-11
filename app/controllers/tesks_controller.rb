class TesksController < ApplicationController
  before_action :set_tesk, only: %i[ show edit update destroy ]

  # GET /tesks or /tesks.json
  def index
    @tesks = Tesk.all
  end

  # GET /tesks/1 or /tesks/1.json
  def show
  end

  # GET /tesks/new
  def new
    @tesk = Tesk.new
  end

  # GET /tesks/1/edit
  def edit
  end

  # POST /tesks or /tesks.json
  def create
    @tesk = Tesk.new(tesk_params)

    respond_to do |format|
      if @tesk.save
        format.html { redirect_to tesk_url(@tesk), notice: "Tesk was successfully created." }
        format.json { render :show, status: :created, location: @tesk }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tesk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tesks/1 or /tesks/1.json
  def update
    respond_to do |format|
      if @tesk.update(tesk_params)
        format.html { redirect_to tesk_url(@tesk), notice: "Tesk was successfully updated." }
        format.json { render :show, status: :ok, location: @tesk }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tesk.errors, status: :unprocessable_entity }
      end
    end
  end

  def change_status
    @tesk = Tesk.find(params[:id])
    if params[:status].present? && Tesk::STATUSES.include?(params[:status].to_sym)
      @tesk.update(status: params[:status])
    end
    redirect_to @tesk, notice: "Status updated to #{@tesk.status}"
  end

  # DELETE /tesks/1 or /tesks/1.json
  def destroy
    @tesk.destroy

    respond_to do |format|
      format.html { redirect_to tesks_url, notice: "Tesk was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tesk
      @tesk = Tesk.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tesk_params
      params.require(:tesk).permit(:description, :status)
    end
end
