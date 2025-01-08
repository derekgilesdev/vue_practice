class CreateCourseBuddyTables < ActiveRecord::Migration[8.0]
  def change
    # Users table
    create_table :users do |t|
      t.string :name, null: false
      t.integer :role, null: false, default: 0 # 'student' or 'instructor'

      t.timestamps
    end

    # Courses table
    create_table :courses do |t|
      t.string :title, null: false
      t.text :description
      t.references :instructor, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end

    # Enrollments table (join table between users and courses)
    create_table :enrollments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end

    # Resources table
    create_table :resources do |t|
      t.references :course, null: false, foreign_key: true
      t.string :title, null: false
      t.string :url, null: false

      t.timestamps
    end

    # Assignments table
    create_table :assignments do |t|
      t.references :course, null: false, foreign_key: true
      t.string :title, null: false
      t.text :description
      t.datetime :due_date

      t.timestamps
    end
  end
end
