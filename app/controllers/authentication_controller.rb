class AuthenticationController < ApplicationController
  def index
        ReportWorker.perform_async('auth','find userId');
  end
end
