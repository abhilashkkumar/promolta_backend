class Api::V1::EmailController < Api::V1::BaseController

  def send_email
    emails = params[:emails].split(';')
    emails.each do |email|
      Email.send_email(email, current_user.email, params[:body], params[:subject], current_user.id)
    end
    render :json => {:msg => "success"}
  end

  def inbox
    emails = Email.where("is_read is not null and user_id = ?", current_user.id).order('created_at desc')
    render :json => emails
  end

  def read_update
    Email.find(params[:email_id]).update(:is_read=>true)
    emails = Email.where("is_read is not null and user_id = ?", current_user.id).order('created_at desc')
    render :json => emails
  end

  def save_draft
    Email.save_draft(params[:body], params[:subject], current_user.id)
    render :json => {:msg => "success"}
  end

  def get_draft
    emails = Email.where("is_draft = ? and user_id = ?", true, current_user.id)
    render :json => emails
  end

  def draft_update
  	Email.find(params[:email_id]).update(:body=> params[:body], :subject => params[:subject])
  	render :json => {:msg => "success"}
  end

  def indentation
  	new_body = Email.find(params[:email_id]).body.gsub('\n\t','\n\t\t')
  	render :json => {:msg => new_body}
  end

end
