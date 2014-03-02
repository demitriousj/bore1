class StudentsController < ApplicationController
  def index
  end

  def new
    @student = Student.new

  end

  def create
    @student = Student.new(student_signup)
  
     if @student.save 
      redirect_to students_path, :notice => "thanks for sigining up #{@student.fname}"
    else
      render new_student_path, :notice => "please try again"
    end
  
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def student_signup
      params.require(:student).permit(:fname, :lname, :major)
      
    end
end
