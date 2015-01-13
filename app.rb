require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/places")

get("/") do
  @place = Places.all()
  erb(:index)
end

post("/places") do
  new_place = params.fetch("new_place")
  places = Places.new(new_place)
  places.save()
  erb(:results)
end
