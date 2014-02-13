class QueryMailer < ActionMailer::Base
  default from: "noreply@mercariamerica.com"
  def new_query_email(query)
  	@query = query
  	mail(to: @query.email, subject: 'Your Query has Successfully Been Created')
  end
  def update_query_email(query)
  	@query = query
  	mail(to: @query.email, supject: 'Your Query has Been Updated')
  end
end
