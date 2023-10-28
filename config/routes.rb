Rails.application.routes.draw do

get("/rock", { :controller => "game", :action => "play_rock"})



end
