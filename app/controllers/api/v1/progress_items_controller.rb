module Api
  module V1
    class ProgressItemsController < ApplicationController
        before_action :set_progress_item, only: [:show, :update, :destroy]

        # GET /users/:id/progress_items
        def index
          @progress_items = current_user.categories
                            .find(params[:category_id])
                            .tasks.find(params[:task_id])
                            .progress_items
                            .all
          json_response(@progress_items)
        end

        # POST /users
        def create

          @progress_item = current_user.categories
                           .find(params[:category_id])
                           .tasks.find(params[:task_id])
                           .progress_items
                           .create!(permit_params)
          json_response(@progress_item, :created)
        end

        # GET /users/:id/progress_items/:id
        def show
          json_response(@progress_item)
        end

        # PUT /users/:id/progress_items/:id
        def update
          p params[:progress], 'sssssssss'
          @progress_item[:progress] << params[:progress]
          p permit_params, 'permit_params'
          p @progress_item[:progress], 'params'
          @progress_item.update(permit_params)
          p @progress_item[:progress], 'params'
          json_response(@progress_item)
          #head :no_content
        end

        # DELETE /users/:id
        def destroy
          @progress_item.destroy
          head :no_content
        end

        private

        def permit_params
          # whitelist params
          params.permit(:progress, :metric, :amount, :task_id, :name, :description, :id)
        end

        def set_progress_item
          @progress_item = ProgressItem.find(params[:id])
        end
    end
  end
end