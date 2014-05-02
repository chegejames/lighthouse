class StudentCellLeadersController < ApplicationController
  # GET /student_cell_leaders
  # GET /student_cell_leaders.json
  def index
    @student_cell_leaders = StudentCellLeader.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @student_cell_leaders }
    end
  end

  # GET /student_cell_leaders/1
  # GET /student_cell_leaders/1.json
  def show
    @student_cell_leader = StudentCellLeader.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @student_cell_leader }
    end
  end

  # GET /student_cell_leaders/new
  # GET /student_cell_leaders/new.json
  def new
    @student_cell_leader = StudentCellLeader.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @student_cell_leader }
    end
  end

  # GET /student_cell_leaders/1/edit
  def edit
    @student_cell_leader = StudentCellLeader.find(params[:id])
  end

  # POST /student_cell_leaders
  # POST /student_cell_leaders.json
  def create
    @student_cell_leader = StudentCellLeader.new(params[:student_cell_leader])

    respond_to do |format|
      if @student_cell_leader.save
        format.html { redirect_to @student_cell_leader, notice: 'Student cell leader was successfully created.' }
        format.json { render json: @student_cell_leader, status: :created, location: @student_cell_leader }
      else
        format.html { render action: "new" }
        format.json { render json: @student_cell_leader.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /student_cell_leaders/1
  # PUT /student_cell_leaders/1.json
  def update
    @student_cell_leader = StudentCellLeader.find(params[:id])

    respond_to do |format|
      if @student_cell_leader.update_attributes(params[:student_cell_leader])
        format.html { redirect_to @student_cell_leader, notice: 'Student cell leader was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @student_cell_leader.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_cell_leaders/1
  # DELETE /student_cell_leaders/1.json
  def destroy
    @student_cell_leader = StudentCellLeader.find(params[:id])
    @student_cell_leader.destroy

    respond_to do |format|
      format.html { redirect_to student_cell_leaders_url }
      format.json { head :no_content }
    end
  end
end
