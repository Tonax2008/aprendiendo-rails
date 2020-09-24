class StudentsController < ApplicationController

    before_action :select_id, only: [:edit, :update, :show, :destory]
    def new
        @student =Student.new
    end

    

    def create 
        @student= Student.new student_paramns
        @student.save
    end

    def edit
    end

    def index
        @student = Student.all
    end

    def show
    end

    def destroy
        if @student.destory
            puts 'Se elimino correctamente'
            redirect_to @student
        end

    end

    private

    def student_paramns
        params.require(:student).permit(:last_name,:name,:promedio,:last_name)
    end

    def select_id
        @student = Student.find params[:id]
    end

    
end
