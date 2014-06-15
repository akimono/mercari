class QueryMailer < ActionMailer::Base
  default from: "noreply@mercariamerica.com"
  def new_query_email(query)
  	@query = query
  	mail(to: @query.email, subject: 'Your Query has Successfully Been Created')
  	mail(to: admin@mercariamercia.com, subject: "new query")
  end
  def update_query_email(query)
  	@query = query
  	prebroken = @query.rep
  	broken = prebroken.split("\s")
  	repemail = broken.select{|each| "@" == each}
  	mail(to: @query.email, subject: 'Your Query has Been Updated')
  	mail(to: repemail, subject: 'Update to query assigned to you')
  end
end
