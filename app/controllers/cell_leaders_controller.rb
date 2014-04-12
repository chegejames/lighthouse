class CellLeadersController < ApplicationController
  # GET /cell_leaders
  # GET /cell_leaders.json
  def index
    @cell_leaders = CellLeader.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cell_leaders }
    end
  end

  # GET /cell_leaders/1
  # GET /cell_leaders/1.json
  def show
    @cell_leader = CellLeader.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cell_leader }
    end
  end

  # GET /cell_leaders/new
  # GET /cell_leaders/new.json
  def new
    @cell_leader = CellLeader.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cell_leader }
    end
  end

  # GET /cell_leaders/1/edit
  def edit
    @cell_leader = CellLeader.find(params[:id])
  end

  # POST /cell_leaders
  # POST /cell_leaders.json
  def create
    @cell_leader = CellLeader.new(params[:cell_leader])

    respond_to do |format|
      if @cell_leader.save
        format.html { redirect_to @cell_leader, notice: 'Cell leader was successfully created.' }
        format.json { render json: @cell_leader, status: :created, location: @cell_leader }
      else
        format.html { render action: "new" }
        format.json { render json: @cell_leader.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cell_leaders/1
  # PUT /cell_leaders/1.json
  def update
    @cell_leader = CellLeader.find(params[:id])

    respond_to do |format|
      if @cell_leader.update_attributes(params[:cell_leader])
        format.html { redirect_to @cell_leader, notice: 'Cell leader was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cell_leader.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cell_leaders/1
  # DELETE /cell_leaders/1.json
  def destroy
    @cell_leader = CellLeader.find(params[:id])
    @cell_leader.destroy

    respond_to do |format|
      format.html { redirect_to cell_leaders_url }
      format.json { head :no_content }
    end
  end
end
