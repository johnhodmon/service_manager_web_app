class SessionsController < ApplicationController
   
  def new
       
      end

      def create
      	user=User.find_by(email: params[:session][:email].downcase)
      	if(user&&user.authenticate(params[:session][:password]))
          remember (user)  
                          
      		redirect_to job_path(id:Job.all[0].id)

      	else

      		flash.now[:danger]='Invalid log in, try again'
          render 'new'
      	end
      end

      def destroy
        log_out if logged_in?
        redirect_to login_path
      end
    end

