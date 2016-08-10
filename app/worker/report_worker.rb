class ReportWorker
  include Sidekiq::Worker
  def perform(name, count)

	report_kvs = { :send_mail => 'true' }

	TraceView::API.trace(:mailer, report_kvs)
  	# Do the work
    # do something
  end
end
