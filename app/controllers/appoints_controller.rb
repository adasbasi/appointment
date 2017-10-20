class AppointsController < ApplicationController
    def index
			@doctor = Doctor.select(:first_name).map(&:first_name).uniq
			@doctors = Doctor.all
			
			@desk = Desk.all

			@doclist = {}
			Doctor.all.each do |list|
				if @doclist.keys.include?(list.first_name)
					@doclist.values[@doclist.keys.index(list.first_name)].append(list.time)
				else
					@doclist[list.first_name] = list.time
				end
			end
    
		end
		def new
      @appoint = @appointable.appoints.new
    end
  
    def create
      @appoint = @appointable.appoints.new appoint_params
      @appointable.save
      redirect_to @appointable, notice: "Your note was successfully posted."
    end
  
    private
  
      def appoint_params
        params.require(:appoint).permit(:note)
      end
end
