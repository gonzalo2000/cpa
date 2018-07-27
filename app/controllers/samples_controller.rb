class SamplesController < ApplicationController
  before_action :set_sample, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :authenticate_admin!, only: [:show, :new, :edit, :create, :update, :destroy]

  # GET /samples
  # GET /samples.json
  def index
    @samples = Sample.all
    @spanish_samples = Sample.where(language: "Spanish").order(level: :asc, mode: :asc, score: :asc)
    @french_samples = Sample.where(language: "French").order(level: :asc, mode: :asc, score: :asc)
    @german_samples = Sample.where(language: "German").order(level: :asc, mode: :asc, score: :asc)
    @asl_samples = Sample.where(language: "ASL").order(level: :asc, mode: :asc, score: :asc)
    @sfs_samples = Sample.where(language: "SFS").order(level: :asc, mode: :asc, score: :asc)
    @latin_samples = Sample.where(language: "Latin").order(level: :asc, mode: :asc, score: :asc)
  end

  # GET /samples/1
  # GET /samples/1.json
  def show
  end

  # GET /samples/new
  def new
    @sample = Sample.new
  end

  # GET /samples/1/edit
  def edit
  end

  # POST /samples
  # POST /samples.json
  def create
    @sample = Sample.new(sample_params)

    respond_to do |format|
      if @sample.save
        format.html { redirect_to @sample, notice: 'Sample was successfully created.' }
        format.json { render :show, status: :created, location: @sample }
      else
        format.html { render :new }
        format.json { render json: @sample.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /samples/1
  # PATCH/PUT /samples/1.json
  def update
    respond_to do |format|
      if @sample.update(sample_params)
        format.html { redirect_to @sample, notice: 'Sample was successfully updated.' }
        format.json { render :show, status: :ok, location: @sample }
      else
        format.html { render :edit }
        format.json { render json: @sample.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /samples/1
  # DELETE /samples/1.json
  def destroy
    @sample.destroy
    respond_to do |format|
      format.html { redirect_to samples_url, notice: 'Sample was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sample
      @sample = Sample.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sample_params
      params.require(:sample).permit(:language, :level, :score, :mode, :comment, :instruction, :submission, :theme)
    end
end
