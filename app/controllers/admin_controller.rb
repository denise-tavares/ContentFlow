class AdminController < ApplicationController
    def login
        if request.post?
          user = User.find_by(email: params[:email])
          if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to admin_dashboard_path
          else
            flash.now[:error] = 'Invalid email/password combination'
          end
        end
      end
    end



    def logout
        session[:user_id] = nil
        redirect_to root_path
      end
    




