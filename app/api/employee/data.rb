module Employee
  class Data < Grape::EmpApi

    resource :employee_data do
      desc "List all Employess"
      get do
        EmpData.all
      end
    end
  end
end