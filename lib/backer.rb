class Backer

require 'pry'
attr_accessor :name, :backed_projects, :project

def initialize(name)
  @name = name
  @backed_projects = []
end

def back_project(project)
  #when a backer has added a project to its list of backed projects,
  @backed_projects << project
  #that project instance should also add the backer to its list of backers
  project.backers << self
  # binding.pry
end


end
