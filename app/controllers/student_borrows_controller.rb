class StudentBorrowsController < ApplicationController
  before_action :set_student_borrow, only: %i[ show edit update destroy ]

  # GET /student_borrows or /student_borrows.json
  def index
    @student_borrows = StudentBorrow.all
  end

  # GET /student_borrows/1 or /student_borrows/1.json
  def show
  end

  # GET /student_borrows/new
  def new
    @student_borrow = StudentBorrow.new
  end

  # GET /student_borrows/1/edit
  def edit
  end

  # POST /student_borrows or /student_borrows.json
  def create
    @student_borrow = StudentBorrow.new(student_borrow_params)

    respond_to do |format|
      if @student_borrow.save
        format.html { redirect_to student_borrow_url(@student_borrow), notice: "Student borrow was successfully created." }
        format.json { render :show, status: :created, location: @student_borrow }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @student_borrow.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_borrows/1 or /student_borrows/1.json
  def update
    respond_to do |format|
      if @student_borrow.update(student_borrow_params)
        format.html { redirect_to student_borrow_url(@student_borrow), notice: "Student borrow was successfully updated." }
        format.json { render :show, status: :ok, location: @student_borrow }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @student_borrow.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_borrows/1 or /student_borrows/1.json
  def destroy
    @student_borrow.destroy

    respond_to do |format|
      format.html { redirect_to student_borrows_url, notice: "Student borrow was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_borrow
      @student_borrow = StudentBorrow.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def student_borrow_params
      params.require(:student_borrow).permit(:idStudent_258, :fullname_258, :class_258, :idbook_258, :namebook_string, :author_258, :category_258, :idBM_258, :dateBorrow_258, :dateBack_258)
    end
end
