module Api
    module V1
        class CommentsController < ApplicationController
            def create
	            comment = Comment.new(comment_params)
		        if comment.save
			        render json: {status: 'SUCCESS', message:'Comment Done', data:post},status: :ok
		        else
			        render json: {status: 'ERROR', message:'Comment not Done', data:post.errors},status: :unprocessable_entity
                end
            end
    
            def show
                comment = Comment.find(params[:id])
                render json: {status: 'SUCCESS', message:'Comment loaded', data:comment},status: :ok
            end
    
            private

            def comment_params
                params.require(:comment).permit(:user_name, :title, :body)
            end
        end
    end
end