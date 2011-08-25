HackspaceCardiff.controllers :site do
  get :index, map: "/" do
    render 'site/index'
  end
end