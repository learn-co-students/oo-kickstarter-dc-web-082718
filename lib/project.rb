class Project

  attr_reader :title
  attr_accessor :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    @backers << backer
    # We need this to avoid an infinite loop of backingness.
    if backer.backed_projects.include?(self) == false
      backer.back_project(self)
    end
  end

end
