class HabitsController < ApplicationController
  before_action :set_habit, only: [:show, :edit, :update, :destroy]

  # GET /habits
  # GET /habits.json
  def index
    @habits = Habit.all
  end

  # GET /habits/1
  # GET /habits/1.json
  def show
    #@habits = Habit.find(habit_params)
    @habit = Habit.find(params[:id])
  end

  # GET /habits/new
  def new
    @habit = Habit.new
    # @track = @order = @customer.orders.create(order_date: Time.now)
  end

  # GET /habits/1/edit
  def edit
  end

  # POST /habits
  # POST /habits.json
  def create
    @habit = Habit.new(habit_params)
    @track = @habit.create_track(streak: 0)
    respond_to do |format|
      if @habit.save
        format.html { redirect_to root_url, notice: 'Habit was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /habits/1
  # PATCH/PUT /habits/1.json
  def update
    respond_to do |format|
      if @habit.update(habit_params)
        format.html { redirect_to root_url, notice: 'Habit was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /habits/1
  # DELETE /habits/1.json
  def destroy
    @habit.destroy
    respond_to do |format|
      format.html { redirect_to root_url, notice: 'Habit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_habit
      @habit = Habit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def habit_params
       params.require(:habit).permit(:habit_category, :habit_title, :habit_description, :habit_duration,:current_user)
    end
    
    def track_params
      params.require(:track).permit(:name, :date, :streak, :habit_done)
    end
end
