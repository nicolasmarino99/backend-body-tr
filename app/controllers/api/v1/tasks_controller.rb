module Api
  module V1
    class TasksController < ApplicationController
        before_action :get_category, :set_task, only: [:show, :update, :destroy]

        # GET /users/:id/tasks
        def index
          @tasks = current_user.categories.find(params[:category_id]).tasks.all
          json_response(@tasks)
        end

        # POST /users
        def create
          @task = current_user.categories.find(params[:category_id]).tasks.create!(permit_params)
          json_response(@task, :created)
        end

        # GET /users/:id/tasks/:id
        def show
          json_response(@task)
        end

        # PUT /users/:id/tasks/:id
        def update
          @task.update(permit_params)
          json_response(@task)
          #head :no_content
        end

        # DELETE /users/:id
        def destroy
          @task.destroy
          head :no_content
        end

        private

        def permit_params
          # whitelist params
          params.permit(:name, :category_id, :progress_item, :img, :task)
        end

        def set_task
          @task = Task.find(params[:id])
        end

        def get_category
          @category = Category.find(params[:category_id])
        end
    end
  end
end