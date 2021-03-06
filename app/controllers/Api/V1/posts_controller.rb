# frozen_string_literal: true

module Api
  module V1
    class PostsController < ApplicationController
      def index
        posts = Post.order('created_at')
        render json: { status: 'SUCCESS', message: 'Posts loaded', data: posts }, status: :ok
      end

      def show
        post = Post.find(params[:id])
        render json: { status: 'SUCCESS', message: 'Posts loaded', data: post }, status: :ok
      end

      def create
        post = Post.new(post_params)
        if post.save
          render json: { status: 'SUCCESS', message: 'Saved post', data: post }, status: :ok
        else
          render json: { status: 'ERROR', message: 'Post not saved', data: post.errors }, status: :unprocessable_entity
         end
      end

      def update
        post = Post.find(params[:id])
        if post.update(post_params)
          render json: { status: 'SUCCESS', message: 'Updated post', data: post }, status: :ok
        else
          render json: { status: 'ERROR', message: 'Post not update', data: post.errors }, status: :unprocessable_entity
        end
      end

      def destroy
        post = Post.find(params[:id])
        post.destroy
        render json: { status: 'SUCCESS', message: 'Deleted post', data: post }, status: :ok
       end

      private

      def post_params
        params.require(:post).permit(:title, :body)
      end
    end
  end
end
