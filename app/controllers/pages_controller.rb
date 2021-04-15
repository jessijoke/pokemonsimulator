class PagesController < ApplicationController

    def search
        
    end

    def search_results
        #move to model
        @results = User.where(
            User.arel_table[:name]
                .lower
                .matches("%#{params[:entry]}%")
            )
    end
    
    def game

    end
    
    private
      def search_params
        params.require(:search).permit(:entry)
      end
end
