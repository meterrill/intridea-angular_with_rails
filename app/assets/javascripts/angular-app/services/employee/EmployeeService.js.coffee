angular.module('app.employeeApp')
  .factory('EmployeeService', [
    'Restangular', 'Employee',
    (Restangular, Employee)->

      model = 'employees'

      Restangular.extendModel(model, (obj)->
        angular.extend(obj, Employee)
      )

      list: ()     -> Restangular.all(model).getList()
  ])
