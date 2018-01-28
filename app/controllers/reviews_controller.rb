class ReviewsController < ApplicationController
    
    def new
        @rating = params[:rating]
        @content = params[:content]
        
        @review = Review.new(:rating => @rating, :content => @content) 
        @review.user = current_user
        @review.course = current_course
        if @review.save
            redirect_to course_path(current_course.id), info: "Review posted"
        else
            redirect_to root_path, danger: "Something went wrong"
        end
    end
    
    private 
        def current_course
          Course.find_by_id(params[:course])
        end
    
end
