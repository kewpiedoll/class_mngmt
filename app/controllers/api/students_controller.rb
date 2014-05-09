class Api::StudentsController < ApiController

	def index
		students = Student.all
		respond_to do |format|
			format.xml { render xml: students.to_xml }	
			format.json { render json: students.to_json }
			    
	  end
	end

end