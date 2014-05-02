class StudentCardsController < ApplicationController
  # GET /student_cards
  # GET /student_cards.json
  def index
    @student_cards = StudentCard.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @student_cards }
    end
  end

  # GET /student_cards/1
  # GET /student_cards/1.json
  def show
    @student = Student.find(params[:student_id])
    @student_card = @student.student_cards.find(params[:id])



    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @student_card }
    end
  end

  # GET /student_cards/new
  # GET /student_cards/new.json
  def new
    @student = Student.find(params[:student_id])
    @student_card = @student.student_cards.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @student_card }
    end
  end

  # GET /student_cards/1/edit
  def edit
    @student = Student.find(params[:student_id])
    @student_card = @student.student_cards.find(params[:id])

  end

  # POST /student_cards
  # POST /student_cards.json
  def create
    @student = Student.find(params[:student_id])
    @student_card = @student.student_cards.build(params[:student_card])


    respond_to do |format|
      if @student_card.save
        format.html { redirect_to [@student, @student_card], notice: 'Student card was successfully created.' }
        format.json { render json: @student_card, status: :created, location: @student_card }
      else
        format.html { render action: "new" }
        format.json { render json: @student_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /student_cards/1
  # PUT /student_cards/1.json
  def update
    @student = Student.find(params[:student_id])
    @student_card = @student.student_cards.find(params[:id])


    respond_to do |format|
      if @student_card.update_attributes(params[:student_card])
        format.html { redirect_to [@student,@student_card], notice: 'Student card was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @student_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_cards/1
  # DELETE /student_cards/1.json
  def destroy
    @student = Student.find(params[:student_id])
    @student_card = @student.student_cards.find(params[:id])
    @student_card.destroy

    respond_to do |format|
      format.html { redirect_to @student }
      format.json { head :no_content }
    end
  end
end
