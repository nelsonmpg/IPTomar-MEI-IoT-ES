module CoursesHelper
    def allCourses
    	@courses = Course.all
	end
end
