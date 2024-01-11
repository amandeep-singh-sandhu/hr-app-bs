class EmployeesController < ApplicationController
	def index
		@employees = Employee.all
	end

	def new
		@employee = Employee.new
	end

	def create
		# Bad way to save values from param in the db
		# @employee = Employee.create(first_name: params[:employee][:first_name], middle_name: params[:employee][:middle_name], last_name: params[:employee][:last_name], personal_email: params[:employee][:personal_email], city: params[:employee][:city], state: params[:employee][:state], country: params[:employee][:country], pincode: params[:employee][:pincode], address_line_1: params[:employee][:address_line_1], address_line_2: params[:employee][:address_line_2])
		# Correct way
		@employee = Employee.new(employee_params)
		if @employee.save
			redirect_to employees_path, notice: 'Employee added successfully...'
		else
			render :new
		end
	end

	def edit
		@employee = Employee.find(params[:id])
	end

	def update
		@employee = Employee.find(params[:id])
		if @employee.update(employee_params)
			redirect_to employees_path, notice: 'Employee updated successfully...'
		else
			render :edit
		end
	end

	def show
		@employee = Employee.find(params[:id])
	end

	def destroy
		@employee = Employee.find(params[:id])
		if @employee.destroy
			redirect_to employees_path, notice: 'Employed deleted successfully...'
		end
	end

	# Method to permit params
	private
	def employee_params
		# Syntax to permit all the params but its not good practice to do it cos if you a customised input then you would get and error
		# params.require(:employee).permit!
		# Correct Way to permit params using strong parameters n not allowing any forbidden ones
		params.require(:employee).permit(:first_name, :middle_name, :last_name, :personal_email, :city, :state, :country, :pincode, :address_line_1, :address_line_2)
	end
end