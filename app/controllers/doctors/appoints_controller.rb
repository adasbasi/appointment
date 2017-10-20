class Doctors::AppointsController < AppointsController
    before_action :set_appointable
  
    def create
        # NOTIFY
        super
    end

    private
  
      def set_appointable
        @appointable = Doctor.find(params[:doctor_id])
      end
  end