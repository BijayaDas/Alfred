class AutomatedTasksController < ApplicationController
  before_action :set_automated_task, only: [:show, :edit, :update, :destroy]

  # GET /automated_tasks
  # GET /automated_tasks.json
  def index
    @automated_tasks = AutomatedTask.all
  end

  # GET /automated_tasks/1
  # GET /automated_tasks/1.json
  def show
  end

  # GET /automated_tasks/new
  def new
    @automated_task = AutomatedTask.new
  end

  # GET /automated_tasks/1/edit
  def edit
  end

  # POST /automated_tasks
  # POST /automated_tasks.json
  def create
    @automated_task = AutomatedTask.new(automated_task_params)

    respond_to do |format|
      if @automated_task.save
        format.html { redirect_to @automated_task, notice: 'Automated task was successfully created.' }
        format.json { render :show, status: :created, location: @automated_task }
      else
        format.html { render :new }
        format.json { render json: @automated_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /automated_tasks/1
  # PATCH/PUT /automated_tasks/1.json
  def update
    respond_to do |format|
      if @automated_task.update(automated_task_params)
        format.html { redirect_to @automated_task, notice: 'Automated task was successfully updated.' }
        format.json { render :show, status: :ok, location: @automated_task }
      else
        format.html { render :edit }
        format.json { render json: @automated_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /automated_tasks/1
  # DELETE /automated_tasks/1.json
  def destroy
    @automated_task.destroy
    respond_to do |format|
      format.html { redirect_to automated_tasks_url, notice: 'Automated task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_automated_task
      @automated_task = AutomatedTask.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def automated_task_params
      params.fetch(:automated_task, {}).permit!
    end
end
