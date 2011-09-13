HackspaceCardiff.controllers :pages do
  get :index, map: "/" do
    render 'pages/index'
  end
  
  get :about, map: "/about-us" do
    render 'pages/about_us'
  end
end