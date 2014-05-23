class AdminMailer < ActionMailer::Base
  default from: "admin@class-mngmt.com"

  def notify_about_new student
    @student = student
    # to = 'admin@class-mngmt.com' ... and can have RAILS_ENV=production? but better way...
    mail(to: 'admin@class-mngmt.com', subject: 'New Student Signed Up')
  end
end
