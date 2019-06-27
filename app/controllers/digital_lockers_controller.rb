class DigitalLockersController < ApplicationController
  before_action :set_digital_locker, only: [:show, :edit, :update, :destroy]

  # GET /digital_lockers
  # GET /digital_lockers.json
  def index
    @digital_lockers = DigitalLocker.all
  end

  # GET /digital_lockers/1
  # GET /digital_lockers/1.json
  def show
  end

  # GET /digital_lockers/new
  def new
    @digital_locker = DigitalLocker.new
  end

  # GET /digital_lockers/1/edit
  def edit
  end

  # POST /digital_lockers
  # POST /digital_lockers.json
  def create
    @digital_locker = DigitalLocker.new(digital_locker_params)

    respond_to do |format|
      if @digital_locker.save
        format.html { redirect_to @digital_locker, notice: 'Digital locker was successfully created.' }
        format.json { render :show, status: :created, location: @digital_locker }
      else
        format.html { render :new }
        format.json { render json: @digital_locker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /digital_lockers/1
  # PATCH/PUT /digital_lockers/1.json
  def update
    respond_to do |format|
      if @digital_locker.update(digital_locker_params)
        format.html { redirect_to @digital_locker, notice: 'Digital locker was successfully updated.' }
        format.json { render :show, status: :ok, location: @digital_locker }
      else
        format.html { render :edit }
        format.json { render json: @digital_locker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /digital_lockers/1
  # DELETE /digital_lockers/1.json
  def destroy
    @digital_locker.destroy
    respond_to do |format|
      format.html { redirect_to digital_lockers_url, notice: 'Digital locker was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_digital_locker
      @digital_locker = DigitalLocker.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def digital_locker_params
      params.fetch(:digital_locker, {})
    end
end
