class User
    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name
        @@all.push(self)
    end 

    def pledges()
        users_pledges = []
        Pledge.all.each do |pledge|
            if pledge.user == self
                users_pledges.push(pledge)
            end
        end
        users_pledges
    end 

    def self.highest_pledge()
        high_pledger = Pledge.all[0].user
        high_pledge = 0
        Pledge.all.each do |pledge|
            if pledge.amount > high_pledge
                high_pledge = pledge.amount
                high_pledger = pledge.user
            end
        end
        high_pledger
    end 

    def self.multi_pledger()
        multi_pledgers = []
        self.all.each do |user|
            if user.pledges.length > 1
                multi_pledgers.push(user)
            end
        end
        multi_pledgers
    end 

    def self.project_creator()
        creators = []
        Project.all.each do |project|
            if !creators.include?(project.creator)
                creators.push(project.creator)
            end
        end 
        creators
    end

    def self.all()
        @@all
    end

end
