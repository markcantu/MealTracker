class CommentsController < ApplicationController
    def create
        @item = Item.find(params[:item_id])
        @comment = @item.comments.create(comments_params)
        redirect_to item_path(@article)
    end
    
    private
        def comment_params
            params.require(:comment).permit(:commenter, :body)  
        end
end
