RuhRoh::Engine.routes.draw do
  get ":id", :to=>"errors#error"
end
