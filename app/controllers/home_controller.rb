class HomeController < ApplicationController
  skip_forgery_protection

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

  def sjis_api_view; end

  def sjis_api
    render json: { result: '田中　検事'.encode(Encoding::SJIS) }, content_type: 'application/json; charset=sjis'
  end

  def sjis_api_html
    render layout: false
  end
end
