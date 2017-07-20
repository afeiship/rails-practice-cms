class TuwensController < ApplicationController
  before_action :set_tuwen, only: [:show, :edit, :update, :destroy]

  # GET /tuwens
  # GET /tuwens.json
  def index
    @tuwens = Tuwen.all
  end

  # GET /tuwens/1
  # GET /tuwens/1.json
  def show
  end

  # GET /tuwens/new
  def new
    @tuwen = Tuwen.new
  end

  # GET /tuwens/1/edit
  def edit
  end

  # POST /tuwens
  # POST /tuwens.json
  def create
    @tuwen = Tuwen.new(tuwen_params)

    respond_to do |format|
      if @tuwen.save
        format.html { redirect_to @tuwen, notice: 'Tuwen was successfully created.' }
        format.json { render :show, status: :created, location: @tuwen }
      else
        format.html { render :new }
        format.json { render json: @tuwen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tuwens/1
  # PATCH/PUT /tuwens/1.json
  def update
    respond_to do |format|
      if @tuwen.update(tuwen_params)
        format.html { redirect_to @tuwen, notice: 'Tuwen was successfully updated.' }
        format.json { render :show, status: :ok, location: @tuwen }
      else
        format.html { render :edit }
        format.json { render json: @tuwen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tuwens/1
  # DELETE /tuwens/1.json
  def destroy
    @tuwen.destroy
    respond_to do |format|
      format.html { redirect_to tuwens_url, notice: 'Tuwen was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tuwen
      @tuwen = Tuwen.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tuwen_params
      params.require(:tuwen).permit(:title, :image, :content, :tag_list)
    end
end
