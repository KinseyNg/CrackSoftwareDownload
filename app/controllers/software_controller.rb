require 'mail'
class SoftwareController < ApplicationController
  #caches_page :index
  def index
     #@getInfo=Software.first(:offset => rand(Software.count))
    @getInfo=Software.find(:all).sample(9)
  end
  #caches_page :detail
  def detail
    @name=params[:detail]
    @type=params[:type]
    if @type=='name'
      @getInfo=Software.find_by_addition(@name)
      @title="[Crack]" +@getInfo.name + "[Download link]"
      @getRInfo=Software.find(:all).sample(10)
    else
      @getInfo=Software.find_by_id(@name)
      @title="[Crack]" +@getInfo.name + "[Download link]"
      @getRInfo=Software.find(:all).sample(10)
    end

  end



  def back
  end

  def email
    @id=session[:id]
    @location=session[:location]
    @name = Software.find(@id).name
  end

  def help
  end

  def about
  end

  def faq
  end

  def contect
  end

  def wait
    @location=params[:location]
    @id=params[:id]
    # printf(@id)
    @name = Software.find(@id).name
    session[:id]=@id
    session[:location]=@location

  end
  def sent
    email=params[:email]
    #if(EmailVerifier.check(@email))
  #  UserMailer.welcome_email(@email).deliver

    #http://www.miniurls.co/AXJkH
    #http://q.gs/7jk4z
    name=Software.find(session[:id]).name
    printf(name)
    printf(email)
    bodymain1="Thank you for downloading [Crack]"+name.to_s+"on our website, the download link is http://q.gs/7jk4z"
      mail = Mail.new do
        from     'noreply@www.predict.pw'
        to        email
        subject  "Download for " + name.to_s
        body      bodymain1
        #body      '123'
        #add_file :filename => 'somefile.png', :content => File.read('/somefile.png')
      end

      mail.delivery_method :sendmail

      mail.deliver

      #mail.to_s #=> "From: mikel@test.lindsaar.net\r\nTo: you@...
      #Email.create(:emailaddress=>@email)
   # end


  end

  def sitemap


    @num=params[:num]
    @end=params[:end]
    @name = Software.where(:id => @num..@end).order('id ASC').select(:addition)
    #.order('id ASC').select(:name)
    render :layout => false
  end
end
