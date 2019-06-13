class EmployeesController < ApplicationController
  def index
   @employees = Employee.all
  end

  def show

		@employee = Employee.find(params[:id])
    puts @employee.to_json

	end

  def new

    @employee = Employee.new

  end

   def create
    #render plain: params[:post].inspect
    @employee = Employee.new(employee_params1)
    puts @employee.to_json

    if(@employee.save)
     redirect_to @employee
   else
     render 'new'
   end

end

def edit
		@employee = Employee.find(params[:id])
end

def update
  @employee = Employee.find(params[:id])
  if(@employee.update(employee_params))
   redirect_to @employee
 else
   render 'edit'
 end
end

def destroy
  @employee = Employee.find(params[:id])
  @employee.destroy
  redirect_to employees_path
end

private
def employee_params1
#params.require(:post).permit(:title, :body)
params.require(:post).permit(:name, :age, :gender, :designation)
#params.require(:employee).permit(:name, :age, :gender, :designation)

end
   def employee_params
   #params.require(:post).permit(:title, :body)
   params.require(:employee).permit(:name, :age, :gender, :designation)
   #params.require(:employee).permit(:name, :age, :gender, :designation)

 end
end
