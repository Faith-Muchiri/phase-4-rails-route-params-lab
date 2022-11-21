class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  def each
    individual_student = Student.find_by(id: params[:id])
    render json: individual_student   
  end

end
