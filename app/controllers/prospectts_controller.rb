class ProspecttsController < ApplicationController
  before_action :set_prospectt, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:home, :new, :create, :show]
  # GET /prospectts
  # GET /prospectts.json
  def index
    @prospectts = Prospectt.all
  end

  # GET /prospectts/1
  # GET /prospectts/1.json
  def show
  end

  # GET /prospectts/new
  def new
    @prospectt = Prospectt.new
  end

  # GET /prospectts/1/edit
  def edit
  end

  # POST /prospectts
  # POST /prospectts.json
  def create
    @prospectt = Prospectt.new(prospectt_params)

    respond_to do |format|
      if @prospectt.save
        format.html { redirect_to @prospectt }
        format.json { render :show, status: :created, location: @prospectt }
      else
        format.html { render :new }
        format.json { render json: @prospectt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prospectts/1
  # PATCH/PUT /prospectts/1.json
  def update
    respond_to do |format|
      if @prospectt.update(prospectt_params)
        format.html { redirect_to @prospectt, notice: 'Prospectt was successfully updated.' }
        format.json { render :show, status: :ok, location: @prospectt }
      else
        format.html { render :edit }
        format.json { render json: @prospectt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prospectts/1
  # DELETE /prospectts/1.json
  def destroy
    @prospectt.destroy
    respond_to do |format|
      format.html { redirect_to prospectts_url, notice: 'Prospectt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prospectt
      @prospectt = Prospectt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prospectt_params
      params.require(:prospectt).permit(:first_name, :last_address, :mail, :company, :job_title, :phone, :last_name)
    end
end
