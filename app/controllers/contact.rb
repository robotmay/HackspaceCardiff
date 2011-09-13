HackspaceCardiff.controllers :contact do
  get :new, map: '/contact-us' do
    @message = Message.new
    render 'contact/new'
  end
  
  post :create, map: '/contact-us' do
    @message = Message.new(params[:message])
    if @message.save
      
    else
      render 'contact/'
    end
  end
end