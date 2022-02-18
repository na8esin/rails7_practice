class HomeController < ApplicationController
  def index
    p session[:cart]
    cart = { 1 => { quantity: 1 } , 2 => { quantity: 4 } }
    session[:cart] = cart

    render plain: 'hello'
  end
end
