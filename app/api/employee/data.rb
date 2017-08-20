module Employee
  class Data < Grape::API

    resource :employee_data do
      desc "List all Employess"
      get do
        EmpData.all
      end

      desc "Create new Employee"
      # paramater validation
      params do
        requires :name, type: String
        requires :address, type: String
        requires :age, type: Integer
      end
      # post a request to create employee
      post do
        EmpData.create!({
            name: params[:name],
            address: params[:address],
            age: params[:age]
         })
      end

    end

  end

end