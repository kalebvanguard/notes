class ApplicationController < ActionController::Base
    def index
        @pages = Page.all
       end

       def show
        @page = Page.find(params[:id])
      end

      def new
        @page = Page.new
       end



end
