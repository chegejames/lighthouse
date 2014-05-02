class StudentPastorsController < ApplicationController
  # GET /student_pastors
  # GET /student_pastors.json
  def index
    @student_pastors = StudentPastor.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @student_pastors }
    end
  end

  # GET /student_pastors/1
  # GET /student_pastors/1.json
  def show
    @student_pastor = StudentPastor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @student_pastor }
    end
  end

  # GET /student_pastors/new
  # GET /student_pastors/new.json
  def new
    @student_pastor = StudentPastor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @student_pastor }
    end
  end

  # GET /student_pastors/1/edit
  def edit
    @student_pastor = StudentPastor.find(params[:id])
  end

  # POST /student_pastors
  # POST /student_pastors.json
  def create
    @student_pastor = StudentPastor.new(params[:student_pastor])

    respond_to do |format|
      if @student_pastor.save
        format.html { redirect_to @student_pastor, notice: 'Student pastor was successfully created.' }
        format.json { render json: @student_pastor, status: :created, location: @student_pastor }
      else
        format.html { render action: "new" }
        format.json { render json: @student_pastor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /student_pastors/1
  # PUT /student_pastors/1.json
  def update
    @student_pastor = StudentPastor.find(params[:id])

    respond_to do |format|
      if @student_pastor.update_attributes(params[:student_pastor])
        format.html { redirect_to @student_pastor, notice: 'Student pastor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @student_pastor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_pastors/1
  # DELETE /student_pastors/1.json
  def destroy
    @student_pastor = StudentPastor.find(params[:id])
    @student_pastor.destroy

    respond_to do |format|
      format.html { redirect_to student_pastors_url }
      format.json { head :no_content }
    end
  end
end
