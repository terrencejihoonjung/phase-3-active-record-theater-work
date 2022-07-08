class Role < ActiveRecord::Base
    has_many :auditions

    def actors
        self.auditions.pluck(:actor)
    end

    def locations 
        self.auditions.pluck(:location)
    end

    def lead
        hired = self.auditions.find_by(hired: true)
        hired ? hired : "no actor has been hired for this role"
    end

    def understudy
        hired = self.auditions.where(hired: true).second
        hired ? hired : "no actor has been hired for understudy for this role"
    end
end