class StudentsController < ApplicationController
    # before_action :find_student
    # skip_before_action :find_student, only: [:new, :create]

    def show
        @student = Student.find(params[:id])
    end

    def new
        @student = Student.new
    end

    def edit
        @student = Student.find(params[:id])
    end

    def create
        @student = Student.create(student_params)
        redirect_to student_path(@student)
    end

    def update
        @student = Student.find(params[:id])
        @student.update(student_params)
        redirect_to student_path(@student)
    end

    private

    def student_params
        params.require(:student).permit(:first_name, :last_name)
    end

    # def find_student
    #     @student = Student.find(params[:id])
    # end
end

