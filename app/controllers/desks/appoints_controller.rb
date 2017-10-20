class Desks::AppointsController < AppointsController
    before_action :set_appointable
  
    private
  
      def set_appointable
        @appointable = Desk.find(params[:desk_id])
      end
  end