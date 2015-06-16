class ParticipationsController < ApplicationController
  before_action :authenticate_user!, only: [:index, :create, :destroy]
  before_action :set_participation, only: [:destroy]

  # GET /participations
  # GET /participations.json
  def index
    if current_user.admin?
        @participations = Participation.all
    else
        @participations = Participation.where(user_id: current_user.id)
    end
  end

  # POST /participations
  # POST /participations.json
  def create
    @participation = Participation.new(participation_params)

    respond_to do |format|
      if @participation.save
        format.html { redirect_to @participation, notice: 'Participation was successfully created.' }
        format.json { render :show, status: :created, location: @participation }
      else
        format.html { render :new }
        format.json { render json: @participation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /participations/1
  # DELETE /participations/1.json
  def destroy
    if @participation.author = true
        @participation.claim.destroy
    end
    @participation.destroy
    respond_to do |format|
      format.html { redirect_to participations_url, notice: 'Participation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_participation
      @participation = Participation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def participation_params
      params.require(:participation).permit(:user_id, :claim_id, :author)
    end
end
