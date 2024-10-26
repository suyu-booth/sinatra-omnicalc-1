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
  @sq_new = params[:number]
  @sq_res = @sq_new.to_f**2
  erb(:square_r)
end

get("/square_root/results") do
  @sqrt_new = params[:user_number]
  @sqrt_res = @sqrt_new.to_f**0.5
  erb(:sqrt_r)
end

get("/payment/results") do
  @years = params[:user_years]
  @apr = params[:user_apr].to_f/100
  @pv = params[:user_pv].to_f

  @pay = @apr * @pv / (1- (1+@apr)**(-@years.to_f))
  erb(:payment_r)
end

get("/random/results") do
  @mini = params[:user_min]
  @maxi = params[:user_max]

  @randi = rand(@mini.to_f..@maxi.to_f)

  erb(:random_r)
end
