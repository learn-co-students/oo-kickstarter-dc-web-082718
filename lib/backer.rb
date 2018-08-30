class Backer
  attr_reader :name, :backed_projects
# @@backers = []

  # def self.backers
  #   @@backers
  # end

  def initialize (name)
    @name = name
    @backed_projects = []

  end

  def back_project (project)
    @backed_projects << project

    project.backers << self
  end

  # def add_backer(backer)
  #   @@backers << backer
  # end

end
