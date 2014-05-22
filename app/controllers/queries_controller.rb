class QueriesController < ApplicationController
  # GET /queries
  # GET /queries.json
  def index
    @queries = Query.find(:all, :conditions => ['email = ?', params[:search]])
    if @queries.empty?
      flash[:notice] = "No prior queries found for that email address"
      redirect_to action: 'new'
    else
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @queries }
    end
  end
  end

  # GET /queries/1
  # GET /queries/1.json
  def show
    if session[:user] == nil
      redirect_to action: 'new'
    else
    @query = Query.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @query }
    end
  end
  end

  # GET /queries/new
  # GET /queries/new.json
  def new
    @query = Query.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @query }
    end
  end

  # GET /queries/1/edit
  def edit
     if session[:user] == nil
      redirect_to action: 'new'
    else
    @query = Query.find(params[:id])
    @users = User.all
  end
end

  # POST /queries
  # POST /queries.json
  def create
    @query = Query.new(params[:query])

    respond_to do |format|
      if @query.save
        QueryMailer.new_query_email(@query).deliver
        flash[:notice] = 'Your query was successfully created. You should receive an email confirmation shortly'
        format.html { redirect_to action: "new" }
        format.json { render json: @query, status: :created, location: @query }
      else
        format.html { render action: "new" }
        format.json { render json: @query.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /queries/1
  # PUT /queries/1.json
  def update
    if session[:user] == nil
      redirect_to action: 'new'
    else
    @query = Query.find(params[:id])
    respond_to do |format|
      if @query.update_attributes(params[:query])
        QueryMailer.update_query_email(@query).deliver
        format.html { redirect_to @query, notice: 'Your query was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @query.errors, status: :unprocessable_entity }
      end
    end
  end
  end

  # DELETE /queries/1
  # DELETE /queries/1.json
  def destroy
    if session[:user] == nil
      redirect_to action: 'new'
    else
    @query = Query.find(params[:id])
    @query.destroy

    respond_to do |format|
      format.html { redirect_to queries_url }
      format.json { head :no_content }
    end
  end
  end
  def search
    if session[:user] == nil
      redirect_to action: 'new'
    else
    @queries = Query.all
  end
end
  def result
    if session[:user] == nil
      redirect_to action: 'new'
    else
    @queries = Query.find(:all, :conditions =>[ "#{params[:condition]} LIKE ? ", params[:search] ])
  end
end
def lang
  encoded_url = URI.parse('http://mercari.herokuapp.com/#googtrans(en|zh-CH)')
  redirect_to encoded_url
end
end
