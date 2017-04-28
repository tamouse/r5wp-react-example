module Api
  module V1

    class PostsController < Base

      before_action :find_post, only: [:show, :update, :destroy]


      def index
        posts = {posts: Post.all.as_json }
        render json: posts
      end

      def show
        render json: @post.as_json(root: true)
      end

      def create
        post = Post.create(create_params)
        if post.persisted?
          head :created
        else
          render status: :unprocessable_entity, json: post.errors.to_json
        end
      end

      def update
      end

      def destroy
      end

      private

      def find_post
        @post = Post.find(params[:id])
      end

      def create_params
        params.require(:post).permit(:title, :body)
      end
    end

  end
end
