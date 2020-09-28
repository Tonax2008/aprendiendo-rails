class StudentsController < ApplicationController

    before_action :select_id, only: [:edit, :update, :show, :destroy]
    def new
        @student =Student.new
    end

    

    def create 
        @student= Student.new student_paramns
        debugger
        @student.save
        # if  @student.save
        #     puts 'Guardado correctamente'
        #     #raise
        #     #debugger
        #     redirect_to students_path

        # else 
        #     puts "error al guardar estudiantes #{error.full_messages}"
        # end
    end

    def edit
    end

    def index
        @student = Student.all 
    end

    def show
    end

    def update
        @student.update student_paramns
        redirect_to students_path
    end

    def destroy
        #@student = Student.find params[:id]
        @student.destroy
        redirect_to students_path
    end
    
    private

    def student_paramns
        params.require(:student).permit(:last_name,:name,:promedio,:last_name,:photo)
    end

    def select_id
        @student = Student.find params[:id]
    end

    
end
