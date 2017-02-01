class CookiesController < ApplicationController

  def index
    #.. show all cookies
    @cookies = Cookie.all
    # render :json => @cookies
  end

  def show
    #.. show a single cookie by id param
    @cookie = Cookie.find(params[:id])
    # render :json => @cookie
  end

  def create
    #.. create a new cookie
    @cookie = Cookie.new(cookies_params)
    if @cookie.save
      render :json => @cookie
    end
  end

  private
  def cookies_params
    params.require(:cookie).permit(:name, :description, :price , :tasty)
  end

end
