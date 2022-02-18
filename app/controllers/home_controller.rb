class HomeController < ApplicationController
  def index
    # {1=>{:quantity=>1}, 2=>{:quantity=>4}}
    # cookieとは明らかに違う
    p session[:cart]
    cart = { 1 => { quantity: 1 } , 2 => { quantity: 4 } }
    session[:cart] = cart

    render plain: 'hello'
  end
end
