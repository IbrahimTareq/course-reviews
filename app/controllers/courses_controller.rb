class CoursesController < ApplicationController
    
    def index
        @courses = Course.all
    end
    
    def show
        @course = Course.find(params[:id])
        @reviews = Review.where(course_id: params[:id])
        @average = reviews_average
        @total_count = @reviews.length
    end
    
    private 
        def reviews_average
            @reviews = Review.where(course_id: params[:id])
            total_count = @reviews.length * 5
            total = 0.0 
            @reviews.each do |review|
                total = total + review.rating.to_i
            end
            average = (total/total_count) * 5
        end
end
