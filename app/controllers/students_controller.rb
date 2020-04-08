class StudentsController < ApplicationController
before_action :set_student, only: :show
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    @student = params
    redirect_to new_student_path(student: @student)
  end


end
