class CommentsController < ApplicationController
  def create
    @shop = Shop.find(params[:shop_id])
    @comment = @shop.comments.build(comment_params)
    @comment.user = current_user

    if @comment.save 
      redirect_to shop_path(@shop), notice: "コメントを投稿しました。"
    else
      redirect_to shop_path(@shop), alert: "コメントを投稿できませんでした。"
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    if @comment.user == current_user
      @comment.destroy
      redirect_to shop_path(@comment.shop), notice: "コメントを削除しました。"
    else
      redirect_to shop_path(@comment.shop), alert: "削除権限がありません。"
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
