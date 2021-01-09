class CommentsController < ApplicationController
  def create
    @article = Article.find(parms[:article_id])
    @comment = @article.comments.create(comment_params)
    redirect_to article_path(@article)
  end

  private
    def comments_params
      param.require(:comment).permit(:commenter, :body)
    end
    
end
