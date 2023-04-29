class ApplicationController < ActionController::Base
        def toggle_show_personal
          @show_personal = !@show_personal
          redirect_to root_path
        end
      
        def toggle_show_school
          @show_school = !@show_school
          redirect_to root_path
        end
      
        def toggle_show_work
          @show_work = !@show_work
          redirect_to root_path
        end
end
