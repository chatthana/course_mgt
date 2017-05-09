# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username:'admin', password: Digest::SHA1.hexdigest('mothertrucker'), firstname: 'administrator', lastname: 'administrator', nickname: 'admin', birthdate: '2017-01-01 00:00:00', admin:1)
User.create(username: 'jameshetfield', password: Digest::SHA1.hexdigest('metallica'), firstname: 'James', lastname: 'Hetfield', nickname: 'Jamie', birthdate: '1970-01-01 00:00:00', admin:0)

Course.create(course_id: 'MGT3905', course_name: 'Operation Management', course_description: 'This is the fundamental of production management', max_students:35, course_date:'2017-06-01', course_start_time:'11:00:00', course_end_time:'13:00:00')
Course.create(course_id: 'FIN2700', course_name: 'Money, Banking, and Financial Markets', course_description: 'This is a simple introduction to finance', max_students:35, course_date:'2017-06-11', course_start_time:'14:00:00', course_end_time:'17:00:00')
Course.create(course_id: 'MGT3905', course_name: 'Operation Management', course_description: 'This is the fundamental of production management', max_students:35, course_date:'2017-06-01', course_start_time:'11:00:00', course_end_time:'13:00:00')
