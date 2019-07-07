class NoticeboardsController < ApplicationController
  before_action :set_noticeboard, only: [:show, :edit, :update, :destroy]

  # GET /noticeboards
  # GET /noticeboards.json
  def index
    @noticeboards = Noticeboard.all
  end

  # GET /noticeboards/1
  # GET /noticeboards/1.json
  def show
  end

  # GET /noticeboards/new
  def new
    @noticeboard = Noticeboard.new
  end

  # GET /noticeboards/1/edit
  def edit
  end

  # POST /noticeboards
  # POST /noticeboards.json
  def create
    @noticeboard = Noticeboard.new(noticeboard_params)

    respond_to do |format|
      if @noticeboard.save
        format.html { redirect_to @noticeboard, notice: 'Noticeboard was successfully created.' }
        format.json { render :show, status: :created, location: @noticeboard }
      else
        format.html { render :new }
        format.json { render json: @noticeboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /noticeboards/1
  # PATCH/PUT /noticeboards/1.json
  def update
    respond_to do |format|
      if @noticeboard.update(noticeboard_params)
        format.html { redirect_to @noticeboard, notice: 'Noticeboard was successfully updated.' }
        format.json { render :show, status: :ok, location: @noticeboard }
      else
        format.html { render :edit }
        format.json { render json: @noticeboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /noticeboards/1
  # DELETE /noticeboards/1.json
  def destroy
    @noticeboard.destroy
    respond_to do |format|
      format.html { redirect_to noticeboards_url, notice: 'Noticeboard was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_noticeboard
      @noticeboard = Noticeboard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def noticeboard_params
      params.fetch(:noticeboard, {}).permit!
      # params.require(:onelogin).permit(:application_name, :url, :username, :password, :status, :additional_info)
    end
end
