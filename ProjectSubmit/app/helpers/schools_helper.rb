module SchoolsHelper
    def allSchools
         schools = School.all.order('created_at DESC')
    end
end
