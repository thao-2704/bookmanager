require "test_helper"

class StudentBorrowsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student_borrow = student_borrows(:one)
  end

  test "should get index" do
    get student_borrows_url
    assert_response :success
  end

  test "should get new" do
    get new_student_borrow_url
    assert_response :success
  end

  test "should create student_borrow" do
    assert_difference("StudentBorrow.count") do
      post student_borrows_url, params: { student_borrow: { author_258: @student_borrow.author_258, category_258: @student_borrow.category_258, class_258: @student_borrow.class_258, dateBack_258: @student_borrow.dateBack_258, dateBorrow_258: @student_borrow.dateBorrow_258, fullname_258: @student_borrow.fullname_258, idBM_258: @student_borrow.idBM_258, idStudent_258: @student_borrow.idStudent_258, idbook_258: @student_borrow.idbook_258, namebook_string: @student_borrow.namebook_string } }
    end

    assert_redirected_to student_borrow_url(StudentBorrow.last)
  end

  test "should show student_borrow" do
    get student_borrow_url(@student_borrow)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_borrow_url(@student_borrow)
    assert_response :success
  end

  test "should update student_borrow" do
    patch student_borrow_url(@student_borrow), params: { student_borrow: { author_258: @student_borrow.author_258, category_258: @student_borrow.category_258, class_258: @student_borrow.class_258, dateBack_258: @student_borrow.dateBack_258, dateBorrow_258: @student_borrow.dateBorrow_258, fullname_258: @student_borrow.fullname_258, idBM_258: @student_borrow.idBM_258, idStudent_258: @student_borrow.idStudent_258, idbook_258: @student_borrow.idbook_258, namebook_string: @student_borrow.namebook_string } }
    assert_redirected_to student_borrow_url(@student_borrow)
  end

  test "should destroy student_borrow" do
    assert_difference("StudentBorrow.count", -1) do
      delete student_borrow_url(@student_borrow)
    end

    assert_redirected_to student_borrows_url
  end
end
