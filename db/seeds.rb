# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# db/seeds.rb

# Users
instructor = User.create!(
  name: "Dr. Jane Smith",
  email: "jane.smith@college.edu",
  password: "password",
  role: "instructor"
)

students = [
  User.create!(name: "John Doe", email: "john.doe@student.edu", password: "password"),
  User.create!(name: "Alice Johnson", email: "alice.johnson@student.edu", password: "password"),
  User.create!(name: "Bob Brown", email: "bob.brown@student.edu", password: "password")
]

# Courses
course = Course.create!(
  title: "Introduction to Programming",
  description: "Learn the basics of programming with Python.",
  instructor: instructor
)

# Enrollments
students.each do |student|
  Enrollment.create!(user: student, course: course)
end

# Resources
Resource.create!(
  course: course,
  title: "Course Syllabus",
  url: "https://example.com/syllabus"
)
Resource.create!(
  course: course,
  title: "Lecture Slides - Week 1",
  url: "https://example.com/lecture1"
)

# Assignments
Assignment.create!(
  course: course,
  title: "Homework 1: Basic Python",
  description: "Complete exercises 1-10 from the course textbook.",
  due_date: DateTime.now + 7.days
)
Assignment.create!(
  course: course,
  title: "Project: Build a Calculator",
  description: "Design and implement a calculator using Python.",
  due_date: DateTime.now + 30.days
)
