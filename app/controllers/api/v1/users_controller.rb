module Api
  module V1
    class UsersController < ApplicationController
      protect_from_forgery with: :null_session
      before_action :set_user, only: [:show, :update, :destroy]
      
      
      # GET /users
      def index
        @users = User.all
           if @users
              render json: {
              users: @users
           }
          else
              render json: {
              status: 500,
              errors: ['no users found']
          }
         end
      end
    
      # POST /users
      def create
        @user = User.new(user_params)
        p user_params
             if @user.save
                 login!  
                 render json: {
                 status: :created,
                 user: @user
             }
            else 
                render json: {
                status: 500,
                errors: @user.errors.full_messages
            }
            end
        
      end
    
      # GET /users/:id
      def show
        @user = User.find(params[:id])
           if @user
              render json: {
              user: @user
           }
           else
              render json: {
              status: 500,
              errors: ['user not found']
            }
           end
      end
      # PUT /users/:id
      def update
        @user.update(user_params)
        json_response(@user)
        #head :no_content
      end

      # DELETE /users/:id
      def destroy
        @user.destroy
        head :no_content
      end

      private
    
      def user_params
        # whitelist params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
      end
    
      def set_user
        @user = User.find(params[:id])
      end
      
    end
  end
end