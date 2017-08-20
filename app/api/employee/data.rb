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

      desc "Update an Employee Address"
      params do
        requires :id, type: String
        requires :address, type: String
      end
      put ':id' do
        EmpData.find(params[:id]).update({
          address: params[:address]
        })
      end

      desc "Delete an Employee"
      params do
        requires :id, type: String
      end
      delete ':id' do
        EmpData.find(params[:id]).destroy!
      end

    end

  end

end