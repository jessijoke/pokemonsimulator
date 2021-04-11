class PagesController < ApplicationController

    def search
        
    end

    def search_results
        @results = User.where(
            User.arel_table[:name]
                .lower
                .matches("%#{params[:entry]}%")
            )
        #@results = User.where(:name like params[:entry])
    end

    private
      def search_params
        params.require(:search).permit(:entry)
      end
end
