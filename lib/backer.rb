require 'pry'

class Backer

  attr_accessor :backed_projects, :name

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    # binding.pry
    @backed_projects << project
    project.backers << self
  end

  def backed_projects
    @backed_projects
  end

end
