module Employee
  class Data < Grape::API

    resource :employee_data do
      desc "List all Employess"
      get do
        EmpData.all
      end
    end
  end
end