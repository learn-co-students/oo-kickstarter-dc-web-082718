class Project
  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

#accepts a Backer as an argument and stores it in the backer array
def add_backer(backer)
  @backers << backer
  backer.backed_projects << self
end

end
