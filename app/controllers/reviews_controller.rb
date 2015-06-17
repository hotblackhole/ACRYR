class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [:index, :new, :edit, :create, :destroy, :update]
  before_action :is_admin, except: [:index, :show]
  before_action :set_review, only: [:show, :edit, :update, :destroy]

  # GET /reviews
  # GET /reviews.json
  def index
    if current_user.admin?
      @reviews = Review.all
    else
      @participations = Participation.where(user_id: current_user.id).where(author: true)
      @reviews = []
      @participations.each do |p|
        p.claim.reviews.each do |review|
          @reviews << review
        end
      end
    end
  end

  # GET /reviews/1
  # GET /reviews/1.json
  def show
  end

  # GET /reviews/new
  def new
    @review = Review.new
    @review.claim_id = params[:claim_id]
  end

  # GET /reviews/1/edit
  def edit
  end

  # POST /reviews
  # POST /reviews.json
  def create
    @review = Review.new(review_params)
    @review.claim_id = params[:review][:claim_id]
    if @review.reject? && !@review.claim.nil?
      @review.claim.state = :draft
      @review.claim.save
    end
    respond_to do |format|
      if @review.save
        format.html { redirect_to @review, notice: 'Review was successfully created.' }
        format.json { render :show, status: :created, location: @review }
      else
        format.html { render :new }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reviews/1
  # PATCH/PUT /reviews/1.json
  def update
    respond_to do |format|
      if @review.update(review_params)
        format.html { redirect_to @review, notice: 'Review was successfully updated.' }
        format.json { render :show, status: :ok, location: @review }
      else
        format.html { render :edit }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reviews/1
  # DELETE /reviews/1.json
  def destroy
    @review.destroy
    respond_to do |format|
      format.html { redirect_to reviews_url, notice: 'Review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def is_admin
      if !current_user.admin?
        respond_to do |format|
          format.html { redirect_to reviews_url, notice: 'You wot m8.' }
          format.json { head :no_content }
        end
      end
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_params
      params.require(:review).permit(:content, :kind)
    end
end
