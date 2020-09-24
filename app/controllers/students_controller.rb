class StudentsController < ApplicationController

    before_action :select_id, only: [:edit, :update, :show, :destory]
    def new
        @student =Student.new
    end

    

    def create 
        @student= Student.new student_paramns
        if  @student.save
            puts 'Guardado correctamente'
            redirect_to students_path
        else 
            puts 'error al guardar estudiantes'
        end
    end

    def edit
    end

    def index
        @student = Student.all
    end

    def show
    end

    def destroy
        
        redirect_to students_path
        

    end

    

    private

    def student_paramns
        params.require(:student).permit(:last_name,:name,:promedio,:last_name)
    end

    def select_id
        @student = Student.find params[:id]
    end

    
end
