class Pledge
    @@all = []
    attr_accessor :user, :project, :amount

    def initialize(user, project, amount)
        @user = user
        @project = project
        @amount = amount
        @@all.push(self)
    end 

    def self.all()
        @@all
    end

end 