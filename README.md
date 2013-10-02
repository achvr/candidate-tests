![ACHVR](https://beta.achvrs.com/assets/achvr-logo-150.png)

## What is this?

These will be little exercises we can give potential candidates.

## What do I need to do?

Clone this repo.  Add your work, commit, push.  Open a pull request.

## CrazyDiv

The idea with CrazyDiv is to test the candidate's ability to deal with "real world" web dev problem -- limited and dynamic presentation space.  CrazyDiv also tests candidate's ability to creatively display interesting data.

## Skool

Skool is a simple Rails 4 application that models students, teachers, and courses.  Teachers have courses.  Students are enrolled in courses.  That's pretty much it.  Review the schema defined in schema.rb and the seed data in seeds.rb.  Fill in the missing model associations so the following questions can easily be answered via the Rails console.

1. What are the course codes for student 129262?  i.e., `Student.find_by!(:sid => '129262').courses.collect(&:course_code)`
2. Who is the teacher for course L001?
3. What are the course names for teacher 421000?
4. What are the names of the teachers for student 112077?
5. Who is the youngest student in course R002?

###### Requirements:

1. Implement one-line examples answering the questions above.  The first one is done for you.
2. Destroying a student should unenroll them from courses.
3. Destroying a teacher should also destroy their courses and all enrollments for those courses.
4. Destroying a course should unenroll all students from it.
5. Rails 4 has changed the syntax for AR associations for certain options.  Your results should use the new way and not trigger any deprecation warnings at runtime.

Note:
Students can have the same teacher for more than one of their courses, and vice versa.  Your associations should consider this.

Bonus:
If you find this exercise takes less than an hour, please also add some useful validations to the model classes.

###### Setup (assumes model associations have been correctly added):

    cd skool
    bundle
    rake db:create
    rake db:migrate
    rake db:seed
    rails c
