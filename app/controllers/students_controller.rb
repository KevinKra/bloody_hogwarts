class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def courses
    @courses = Student.find(params[:id]).courses
  end
end