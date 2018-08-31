class Backer

  attr_reader :name
  attr_accessor :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    @backed_projects << project
    # We need this to avoid an infinite loop of backingness.
    if project.backers.include?(self) == false
      project.add_backer(self)
    end
  end

end
