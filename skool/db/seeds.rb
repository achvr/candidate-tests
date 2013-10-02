teachers = [
  {tid: '261495', first_name: 'Bernarda', last_name: 'Cheesman'},
  {tid: '136338', first_name: 'Terese',   last_name: 'Siciliano'},
  {tid: '544121', first_name: 'Chase',    last_name: 'Collum'},
  {tid: '421000', first_name: 'Carolyn',  last_name: 'Wetherington'},
  {tid: '984259', first_name: 'Margene',  last_name: 'Rollings'},
  {tid: '189267', first_name: 'Gennie',   last_name: 'Winters'},
  {tid: '192527', first_name: 'Taylor',   last_name: 'Luthy'},
  {tid: '132593', first_name: 'Jodi',     last_name: 'Stirling'}
]
courses = [
  {course_code: 'E001', tid: '421000', name: 'English/Language Arts'},
  {course_code: 'M001', tid: '261495', name: 'Mathematics'},
  {course_code: 'M002', tid: '261495', name: 'Algebra Readiness'},
  {course_code: 'M003', tid: '261495', name: 'Algebra I'},
  {course_code: 'M004', tid: '261495', name: 'Algebra II (Honors)'},
  {course_code: 'M005', tid: '261495', name: 'Geometry (Honors)'},
  {course_code: 'S001', tid: '132593', name: 'Science'},
  {course_code: 'H001', tid: '192527', name: 'Social Studies'},
  {course_code: 'L001', tid: '136338', name: 'Spanish I'},
  {course_code: 'L002', tid: '544121', name: 'German I'},
  {course_code: 'L003', tid: '421000', name: 'Latin I'},
  {course_code: 'R001', tid: '984259', name: 'Band'},
  {course_code: 'R002', tid: '984259', name: 'Chorus'},
  {course_code: 'P001', tid: '189267', name: 'Fitness & Health'}
]
students = [
  {sid: '701286', birthdate: '2001-08-03', first_name: 'Meredith', last_name: 'Anglin'},
  {sid: '651065', birthdate: '2001-11-14', first_name: 'Isis',     last_name: 'Rathburn'},
  {sid: '755550', birthdate: '2001-12-13', first_name: 'Andrew',   last_name: 'Haggard'},
  {sid: '116154', birthdate: '2001-07-19', first_name: 'Hae',      last_name: 'Boughner'},
  {sid: '453744', birthdate: '2001-05-30', first_name: 'Kira',     last_name: 'Grizzard'},
  {sid: '536021', birthdate: '2002-05-06', first_name: 'Perry',    last_name: 'Zayac'},
  {sid: '573546', birthdate: '2001-10-15', first_name: 'Eliseo',   last_name: 'Alfano'},
  {sid: '916062', birthdate: '2002-04-21', first_name: 'Timmy',    last_name: 'Rieke'},
  {sid: '108066', birthdate: '2001-09-25', first_name: 'Sabrina',  last_name: 'Gum'},
  {sid: '621763', birthdate: '2001-09-02', first_name: 'Roselyn',  last_name: 'Corbett'},
  {sid: '513231', birthdate: '2001-12-23', first_name: 'Walter',   last_name: 'Garceau'},
  {sid: '266510', birthdate: '2001-11-20', first_name: 'Shara',    last_name: 'Tabron'},
  {sid: '599521', birthdate: '2002-02-28', first_name: 'Erick',    last_name: 'Hyche'},
  {sid: '129262', birthdate: '2002-01-26', first_name: 'Lucile',   last_name: 'Shuman'},
  {sid: '202027', birthdate: '2002-04-14', first_name: 'Mavis',    last_name: 'Lewin'},
  {sid: '688639', birthdate: '2002-04-18', first_name: 'Ricky',    last_name: 'Beaudry'},
  {sid: '529815', birthdate: '2001-07-30', first_name: 'Micha',    last_name: 'Labrum'},
  {sid: '112077', birthdate: '2001-10-23', first_name: 'Kiersten', last_name: 'Clute'},
  {sid: '863241', birthdate: '2001-11-26', first_name: 'Domitila', last_name: 'Duropan'},
  {sid: '557891', birthdate: '2002-04-09', first_name: 'Obdulia',  last_name: 'Weatherholtz'}
]
teachers.each{|teacher| Teacher.create!(teacher)}
course_term = '2013-2014'
created_courses = courses.collect do |course|
  course[:term] = course_term
  course[:teacher] = Teacher.where(:tid => course.delete(:tid)).first
  Course.create!(course)
end
students.each do |student|
  created_student = Student.create!(student)
  created_student.courses = created_courses.sample(4)
  created_student.save!
end
