module Api
  module V1
   class CategorysController < ApplicationController
        before_action :set_category, only: [:show, :update, :destroy]

        # GET /users/:id/categorys
        def index
          @categorys = current_user.categorys
          json_response(@categorys)
        end

        # POST /users
        def create
          @category = current_user.categorys.build(permit_params)
          json_response(@category, :created)
        end

        # GET /users/:id/categorys/:id
        def show
          json_response(@category)
        end

        # PUT /users/:id/categorys/:id
        def update
          @category.update(permit_params)
          json_response(@category)
          #head :no_content
        end

        # DELETE /users/:id
        def destroy
          @category.destroy
          head :no_content
        end

        private

        def permit_params
          # whitelist params
          params.permit(:name, :user_id, :category, :img)
        end

        def set_category
          @category = Category.find(params[:id])
        end

    end
  end
end
