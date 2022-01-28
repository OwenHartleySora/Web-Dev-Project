class CommentsController < ApplicationController
    #Creating a library of functions to be recognized in comments.[name]
    def create
        @article = Article.find(params[:article_id])
        @comment = @article.comments.create(comment_params)
        redirect_to article_path(@article)
      end

  #Laserbeam apocalypse
    def destroy
      @article = Article.find(params[:article_id])
      @comment = @article.comments.find(params[:id])
      @comment.destroy
      redirect_to article_path(@article), status: 303
    end
    
      private
        def comment_params
          params.require(:comment).permit(:commenter, :body)
        end
    
    private
    def comment_params
      params.require(:comment).permit(:commenter, :body, :status)
    end
end
