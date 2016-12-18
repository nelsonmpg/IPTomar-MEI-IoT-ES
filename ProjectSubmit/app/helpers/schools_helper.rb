module SchoolsHelper
    def allSchools
         #schools = School.all.order('created_at DESC')
         schools = School.all
    end
end
