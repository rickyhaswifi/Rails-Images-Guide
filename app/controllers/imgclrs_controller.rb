class ImgclrsController < ApplicationController
  before_action :set_imgclr, only: [:show, :edit, :update, :destroy]

  def index
    @imgclrs = Imgclr.all
    end
  
    def new
      @imgclr = Imgclr.new
    end
  
    def show
    end
    
  
    def create
      @imgclr = Imgclr.new(imgclr_params)
        if @imgclr.save
          redirect_to @imgclr
        else
          render :new  
        end  
    end
  
    def edit
      render :new
    end
  
    def update
        if @imgclr.update(imgclr_params)
          redirect_to @imgclr
        else
          render :new
        end
    end
  
    def destroy
      @imgclr.destroy
      redirect_to root_path
    end
  

    private
      def imgclr_params
        params.require(:imgclr).permit(:imagelink, :colorhex)
      end

      def set_imgclr
        @imgclr = Imgclr.find(params[:id])
      end
end
