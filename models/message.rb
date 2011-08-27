class Message < ActiveRecord::Base
  validates :from_email, presence: true
  validates :body, presence: true
  
  before_create :set_default_subject_if_blank
  
  def set_default_subject_if_blank
    self.subject ||= "Message via the HackspaceCardiff contact form"
  end
end
