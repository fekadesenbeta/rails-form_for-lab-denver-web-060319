class SchoolClassesController < ApplicationController

    before_action :find_school_class, only: [:show, :edit, :update] 

    def index
    end

    def new
        @school_class = SchoolClass.new
    end

    def create
        @school_class = SchoolClass.create(allowed_params)
        redirect_to school_class_path(@school_class)
    end

    def update
        @school_class.update(allowed_params)
        redirect_to school_class_path(@school_class)
    end

    def edit 
    end
    
    def show
    end

    def post
    end

    private 

    def allowed_params
        params.require(:school_class).permit(:title, :room_number)
    end

    def find_school_class
        @school_class = SchoolClass.find(params[:id])
    end


end