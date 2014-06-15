class QueryMailer < ActionMailer::Base
  default from: "noreply@mercariamerica.com"
  def new_query_email(query)
  	@query = query
  	mail(to: @query.email, subject: 'Your Query has Successfully Been Created')
  	mail(to: "admin@mercariamerica.com", subject: 'New Query')
  	end
  def update_query_email(query)
  	@query = query
  	mail(to: @query.email, subject: 'Your Query has Been Updated')
  	mail(to: @query.rep.match(/[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}/i)[0]), subject: "you have a query")
  end
end
