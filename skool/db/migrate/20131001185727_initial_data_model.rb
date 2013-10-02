class InitialDataModel < ActiveRecord::Migration
  def change
    create_table 'students' do |t|
      t.string 'sid',        :null => false
      t.string 'first_name', :null => false
      t.string 'last_name',  :null => false
      t.date   'birthdate',  :null => false

      t.index 'sid', :unique => true
    end

    create_table 'teachers' do |t|
      t.string 'tid',        :null => false
      t.string 'first_name', :null => false
      t.string 'last_name',  :null => false

      t.index 'tid', :unique => true
    end

    create_table 'courses' do |t|
      t.string  'course_code', :null => false
      t.string  'term',        :null => false
      t.integer 'teacher_id',  :null => false
      t.string  'name',        :null => false
      t.text    'description'

      t.index ['course_code', 'term', 'teacher_id'], :name => 'index_courses_on_unique', :unique => true
    end

    create_table 'course_enrollments' do |t|
      t.integer 'course_id',  :null => false
      t.integer 'student_id', :null => false
      t.string  'final_grade'

      t.index ['course_id', 'student_id'], :name => 'index_course_enrollments_on_unique', :unique => true
    end
  end
end
