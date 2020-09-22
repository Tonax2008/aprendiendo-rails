class StudentsController < ApplicationController


    def new
        @Student.new
    end

    

    def create 
        @student= ::Students.new student_paramns
        @student.save
    end

    private

    def student_paramns
        params.require(:student).permit(:matricula,:name,:promedio)
    end

    
end
