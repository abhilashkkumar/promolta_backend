class Email < ActiveRecord::Base
  belongs_to :user
  has_many :emails
  belongs_to :email

  scope :sent_emails, -> { where(is_sent: true) }
  scope :draft_emails, -> { where(is_draft: true) }
  scope :trash_emails, -> { where(is_trash: true) }
  scope :read_emails, -> { where(is_read: true) }
  scope :unread_emails, -> { where(is_read: false) }

  def self.send_email(receiver, sender, body, subject, sender_id)
    receiver = User.find_by_email(receiver);
    if receiver.present?
      Email.new(:to => receiver.email, :from => sender, :body => body, :subject => subject, :is_sent => true, :user_id => sender_id).save!
      Email.new(:to => receiver.email, :from => sender, :body => body, :subject => subject, :is_read => false, :user_id => receiver.id).save!
    end
  end

  def self.save_draft(body, subject, sender_id)
      Email.new(:body => body, :subject => subject, :is_draft => true, :user_id => sender_id).save!
  end

end
