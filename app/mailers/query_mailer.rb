class QueryMailer < ActionMailer::Base
  default from: "noreply@mercariamerica.com"
  def new_query_email(query)
  	@query = query
  	mail(to: @query.email, subject: 'Your Query has Successfully Been Created')
  	end
     def new_spanish_query_email(query)
    @query = query
    mail(to: @query.email, subject: 'Su Pregunta éxito ha sido creado')
    end
  def update_query_email(query)
  	@query = query
  	mail(to: @query.email, subject: 'Your Query has Been Updated')
  	end
  	def admin_query_email(query)
  		@query = query
  		mail(to: "admin@mercariamerica.com", subject: 'A new query has been created')
  	end
end
