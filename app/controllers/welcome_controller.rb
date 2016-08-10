class WelcomeController < ApplicationController

   def index
	ReportWorker.perform_async('feedback@appneta.com','awesome stuff');
  end
end
