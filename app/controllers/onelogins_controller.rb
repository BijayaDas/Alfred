class OneloginsController < ApplicationController
  before_action :set_onelogin, only: [:show, :edit, :update, :destroy]

  # GET /onelogins
  # GET /onelogins.json
  def index
    @onelogins = Onelogin.all
  end

  # GET /onelogins/1
  # GET /onelogins/1.json
  def show
  end

  # GET /onelogins/new
  def new
    @onelogin = Onelogin.new
  end

  # GET /onelogins/1/edit
  def edit
  end

  # POST /onelogins
  # POST /onelogins.json
  def create
    @onelogin = Onelogin.new(onelogin_params)

    respond_to do |format|
      if @onelogin.save
        format.html { redirect_to @onelogin, notice: 'Onelogin was successfully created.' }
        format.json { render :show, status: :created, location: @onelogin }
      else
        format.html { render :new }
        format.json { render json: @onelogin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /onelogins/1
  # PATCH/PUT /onelogins/1.json
  def update
    respond_to do |format|
      if @onelogin.update(onelogin_params)
        format.html { redirect_to @onelogin, notice: 'Onelogin was successfully updated.' }
        format.json { render :show, status: :ok, location: @onelogin }
      else
        format.html { render :edit }
        format.json { render json: @onelogin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /onelogins/1
  # DELETE /onelogins/1.json
  def destroy
    @onelogin.destroy
    respond_to do |format|
      format.html { redirect_to onelogins_url, notice: 'Onelogin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_onelogin
      @onelogin = Onelogin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def onelogin_params
      params.require(:onelogin).permit(:application_name, :url, :username, :password, :status, :additional_info)
    end
end
