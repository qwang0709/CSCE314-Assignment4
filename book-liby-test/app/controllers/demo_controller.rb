class DemoController < ApplicationController

  layout false

  def index #an action
    #render('demo/index') #省略html.erb后缀
  end

  def hello
    @array = [1,2,3,4]
  #  @id = params['id']
  #  @page = params[:page]

    if params[:id]== '4'
      @phone = '12345678'
    elsif params[:id]  == '5'
      @phone = 'xxxxxxxx'
    else
      @phone = '1111111'
    end


   #render('demo/hello') #也可以不写，这个是default
  #  redirect_to('https://nytimes.com')
   #redirect_to(controller:'demo', action:'index')
  end
end
