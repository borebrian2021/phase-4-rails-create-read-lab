class PlantsController < ApplicationController
      #GET /
      def index
        plants=Plant.all
        render json:plants 
    end

    #GET /plants:id
    def show
        plant=Plant.find_by(id:params[:id])
        render json:plant
    end

    def create
        plant =Plant.create(accepted_params)
        render json:plant ,status: :created
    end

    def accepted_params
        params.permit(:name ,:image, :price)
    end
end
