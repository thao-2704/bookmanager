class CreateStudentBorrows < ActiveRecord::Migration[7.0]
  def change
    create_table :student_borrows do |t|
      t.string :idStudent_258
      t.string :fullname_258
      t.string :class_258
      t.string :idbook_258
      t.string :namebook_string
      t.string :author_258
      t.string :category_258
      t.string :idBM_258
      t.string :dateBorrow_258
      t.string :dateBack_258

      t.timestamps
    end
  end
end
