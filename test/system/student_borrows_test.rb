require "application_system_test_case"

class StudentBorrowsTest < ApplicationSystemTestCase
  setup do
    @student_borrow = student_borrows(:one)
  end

  test "visiting the index" do
    visit student_borrows_url
    assert_selector "h1", text: "Student borrows"
  end

  test "should create student borrow" do
    visit student_borrows_url
    click_on "New student borrow"

    fill_in "Author 258", with: @student_borrow.author_258
    fill_in "Category 258", with: @student_borrow.category_258
    fill_in "Class 258", with: @student_borrow.class_258
    fill_in "Dateback 258", with: @student_borrow.dateBack_258
    fill_in "Dateborrow 258", with: @student_borrow.dateBorrow_258
    fill_in "Fullname 258", with: @student_borrow.fullname_258
    fill_in "Idbm 258", with: @student_borrow.idBM_258
    fill_in "Idstudent 258", with: @student_borrow.idStudent_258
    fill_in "Idbook 258", with: @student_borrow.idbook_258
    fill_in "Namebook string", with: @student_borrow.namebook_string
    click_on "Create Student borrow"

    assert_text "Student borrow was successfully created"
    click_on "Back"
  end

  test "should update Student borrow" do
    visit student_borrow_url(@student_borrow)
    click_on "Edit this student borrow", match: :first

    fill_in "Author 258", with: @student_borrow.author_258
    fill_in "Category 258", with: @student_borrow.category_258
    fill_in "Class 258", with: @student_borrow.class_258
    fill_in "Dateback 258", with: @student_borrow.dateBack_258
    fill_in "Dateborrow 258", with: @student_borrow.dateBorrow_258
    fill_in "Fullname 258", with: @student_borrow.fullname_258
    fill_in "Idbm 258", with: @student_borrow.idBM_258
    fill_in "Idstudent 258", with: @student_borrow.idStudent_258
    fill_in "Idbook 258", with: @student_borrow.idbook_258
    fill_in "Namebook string", with: @student_borrow.namebook_string
    click_on "Update Student borrow"

    assert_text "Student borrow was successfully updated"
    click_on "Back"
  end

  test "should destroy Student borrow" do
    visit student_borrow_url(@student_borrow)
    click_on "Destroy this student borrow", match: :first

    assert_text "Student borrow was successfully destroyed"
  end
end
