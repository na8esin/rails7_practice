class HomeController < ApplicationController
  def index
    # {1=>{:quantity=>1}, 2=>{:quantity=>4}}
    # cookieとは明らかに違う
    # {"1"=>{"quantity"=>1}, "2"=>{"quantity"=>4}}
    p session[:cart]
    cart = { 1 => { quantity: 1 } , 2 => { quantity: 4 } }
    session[:cart] = cart

    render plain: 'hello'
  end

  def form_options_helper_select; end

  def sjis; end

  def sjis_post
    p params
  end
end
