class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index

    @students = Student.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @student = Student.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @student = Student.new(student_params)
    @student.save
    redirect_to students_path
    # respond_to do |format|
    #   if @student.save
    #     format.html { redirect_to @student, notice: 'User was successfully created.' }
    #     format.json { render :show, status: :created, location: @student }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @student.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    @student.update(student_params)
    # respond_to do |format|
    #   if @student.update(student_params)
    #     format.html { redirect_to @student, notice: 'User was successfully updated.' }
    #     format.json { render :show, status: :ok, location: @student }
    #   else
    #     format.html { render :edit }
    #     format.json { render json: @student.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
      params.require(:student).permit(:student_name, :student_mobile_number, :student_address, :student_email, :student_password, :student_fav_sebject, :student_hobies)
    end
end
