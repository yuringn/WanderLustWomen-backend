class CommentsController < ApplicationController

    def index
        comments = Comment.order(:id)
        render json: comments
    end

    def show
        comment = Comment.find(params[:id])
        render json: comment
    end

    def create
        comment = Comment.create(comment_params)
        render json: comment
    end

    def edit
        comment = Comment.find(params[:id])
    end

    def update
        comment = Comment.find(params[:id])
        comment.update(comment_params)
        render json: comment
    end

    def destroy
        comment = Comment.find(params[:id])
        comment.destroy
        render json: {}
    end

    private

    def comment_params
        params.permit(:user_id, :post_id, :content)
    end
    
end
