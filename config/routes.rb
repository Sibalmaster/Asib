Rails.application.routes.draw do
  resources 'memos' do
	  resources 'replies'
  end
	
	root 'memos#index'
 
end
