class NotificationController < ApplicationController
  def sendMail
    ReportWorker.perform_async('sendNotification','Profile picture updated');
  end
end
