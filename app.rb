require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:square)
end

get("/square/new") do
  erb(:square)
end

get("/square_root/new") do
  erb(:sqrt)
end

get("/payment/new") do
  erb(:payment)
end

get("/random/new") do
  erb(:random)

end

get("/square/results") do
  @sq_new = params[:user_number].to_f
  @sq_res = @sq_new**2
  erb(:square_r)
end

get("/square_root/results") do
  erb(:sqrt_r)
end

get("/payment/results") do
  erb(:payment_r)
end

get("/random/results") do
  @mini = params[:user_min].to_f
  @maxi = params[:user_max].to_f

  @randi = rand(@mini..@maxi)

  erb(:random_r)
end
