class StudentsController < ApplicationController


    def new
        @student =Student.new
    end

    

    def create 
        @student= Student.new student_paramns
        @student.save
    end

    private

    def student_paramns
        params.require(:student).permit(:last_name,:name,:promedio,:last_name)
    end

    
end
