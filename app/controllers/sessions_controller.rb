class SessionsController < ApplicationController
  def new
      end

      def create
      	user=User.find_by(email: params[:session][:email].downcase)
      	if(user&&user.authenticate(params[:session][:password]))
          remember (user)
      		redirect_to user

      	else
      		flash.now[:danger]='Invalid log in, try again'
      	end
      end

      def destroy
      end
    end

