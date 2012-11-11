class PagesController < ApplicationController
  def index
    if params[:id] && template_exists?(params[:id], ["page"])
      render params[:id]
    else
      render params[:id]
    end
  end

  def mail
    PageMailer.send_mail(params).deliver
    render params[:id] || 'index'
  end
end
