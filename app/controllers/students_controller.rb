class StudentsController < ApplicationController
    def index
        students = Student.all 
        render json: students
    end

    def grades
        # grades = Student.all.map do |stud|
        #     stud.grade
        # end
        grades = Student.all.order(grade: :desc)
        render json: grades
    end
end
