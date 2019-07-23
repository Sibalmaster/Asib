class RepliesController < ApplicationController
	def create  # 쓴 댓글 저장하기
		@memo = Memo.find(params[:memo_id])
		@reply = @memo.replies.new(reply_params)
        @reply.save
        redirect_to @memo
    end
	
	
	private
	
	def reply_params
		params.require(:reply).permit(:content)
	end
end
