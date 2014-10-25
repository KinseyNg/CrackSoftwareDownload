require 'mail'
class SoftwareController < ApplicationController
  def index
     #@getInfo=Software.first(:offset => rand(Software.count))
    @getInfo=Software.find(:all).sample(9)
  end

  def detail
    @name=params[:detail]
    @getInfo=Software.find_by_id(@name)
    @getRInfo=Software.find(:all).sample(10)
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
    @email=params[:email]
    if(EmailVerifier.check(@email))

      mail = Mail.new do
        from     'me@test.lindsaar.net'
        to       'ngkongsum@gmail.com'
        subject  'Here is the image you wanted'
        body     'test'
        #add_file :filename => 'somefile.png', :content => File.read('/somefile.png')
      end

      mail.delivery_method :sendmail

      mail.deliver

      mail.to_s #=> "From: mikel@test.lindsaar.net\r\nTo: you@...
      Email.create(:emailaddress=>@email)
    end


  end
end
