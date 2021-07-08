class Project
    @@all = []
    attr_accessor :project_name, :creator, :goal

    def initialize(project_name, creator, goal)
        @project_name = project_name
        @creator = creator
        @goal = goal
        @@all.push(self)
    end 

    def pledges()
        project_pledges = []
        Pledge.all.each do |pledge|
            if pledge.project == self
                project_pledges.push(pledge)
            end
        end
        project_pledges
    end
    
    def pledge_total()
        total = 0
        self.pledges.each do |project_pledge|
            total += project_pledge.amount
        end
        total
    end

    def backers()
        project_backers = []
        self.pledges.each do |project_pledge|
            if !project_backers.include?(project_pledge.user)
                project_backers.push(project_pledge.user)
            end
        end
        project_backers
    end

    def self.no_pledges()
        projects_without_pledges = []
        self.all.each do |project|
            if project.pledge_total == 0
                projects_without_pledges.push(project)
            end
        end
        projects_without_pledges
    end 

    def self.above_goal()
        projects_above_goal = []
        self.all.each do |project|
            if project.pledge_total > project.goal
                projects_above_goal.push(project)
            end
        end
        projects_above_goal
    end

    def self.most_backers
        popular_project = self.all[0]
        self.all.each do |project|
            if project.backers.length > popular_project.backers.length
                popular_project = project 
            end
        end
        popular_project
    end

    def self.all()
        @@all
    end

end 