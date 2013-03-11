RuhRoh::Engine.routes.draw do
  match ":id", :to=>"errors#error"
end
