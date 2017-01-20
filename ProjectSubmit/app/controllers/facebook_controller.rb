class FacebookController < ApplicationController
	def initialize
	    #specify access_token here
	    @access_token = 'X'
	    #Picking the graph api object from kaola gem
	    @graph = Koala::Facebook::API.new(@access_token)
  	end

  	def page_wall_post
	    @access_token = params[:access_token].present? ? params[:access_token] : @access_token
	    title = params[:title]
	    page_link = params[:page_link]
	    link_name = params[:link_name]
	    description = params[:description]
	    image_url = params[:image_url]
	    success_msg = 'Project Posted'

    	begin
	      #put_wall_post is method to post an article to the pages
	      post_info = @graph.put_wall_post(title, {
	          name: link_name, description: description, picture: image_url, link: page_link
	      })
    		rescue Exception => e
      		success_msg = e.message
    	end

    	render text: success_msg
  	end

  	def delete_page_wall_posts
    	message = 'successfully delete posts'
    	page_id = params[:page_id]

    	begin
      		loop do
        		posts = @graph.fql_query("select post_id from stream where source_id=#{page_id} and is_hidden=0")
        		break if posts.empty?
        			posts.each do |post|
          			@graph.delete_object(post["post_id"])
        		end
        		puts 'sleeping ... 120 seconds'
        		sleep 120
     		 end
    		rescue Exception => e
      		message = e.message
    	end
    	render text: message
  	end
end
