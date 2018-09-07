class Backer

    attr_accessor :name,:backed_projects

    def initialize(name)
        @name = name
        @backed_projects = []
    end

    def back_project(proj)
        @backed_projects << proj
        proj.add_backer(self)
    end


end
