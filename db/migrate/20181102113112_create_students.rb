class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|

      t.string :student_name
      t.string :student_mobile_number
      t.string :student_address
      t.string :student_email
      t.string :student_password
      t.string :student_fav_sebject
      t.string :student_hobies
      t.timestamps
    end
  end
end
