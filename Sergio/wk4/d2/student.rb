# Create an class that represents a person who would use an application

class Student

  attr_accessor :first_name, :last_name, :age, :number, :tasks, :phone, :project, :homework

  def initialize (first_name, last_name, age, number, tasks, phone, project, homework)
    @first_name = first_name
    @last_name = last_name
    @age = age
    @number = number
    @tasks = tasks
    @phone = phone
    @project = project
    @homework = homework
  end

end
