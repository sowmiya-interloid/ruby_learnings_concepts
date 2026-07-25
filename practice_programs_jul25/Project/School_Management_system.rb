module Reportable
    def report 
        puts "#{name} Average: #{average} Grade: #{grade}"
    end
end


class Person

    attr_reader :name

    def initialize(name)
        @name=name
    end
end

class Student < Person

    include Reportable

    attr_reader :roll_no

    def initialize(name,roll_no)
        super(name)
        @roll_no=roll_no
        @marks=[]
        @i=-1
    end

    def add_mark(mark)
        @i+=1
        @marks[@i]=mark
    end

    def average

        count=0

        @marks.each do |n|
            count+=1
        end

        sum=0

        @marks.each do |n|
            sum+=n
        end
        
        return 0 if count == 0

        average=sum /count

    end

    def grade
        avg=average

        if(avg>=90 && avg<=100)
            "A"
        elsif(avg>=50 && avg<90)
            "B"
        else
            "Fail"
        end
    end
        
end

class Teacher < Person

    attr_reader :subject

    def initialize(name,subject)
        super(name)
        @subject=subject
        @students=[]
        @i=-1
    end

    def assign_subject(sub)
        @i+=1
        @students[@i]=sub
    end

end

class Course

    attr_reader :title
    attr_reader :teacher

    def initialize(title,teacher)
        @title=title
        @teacher=teacher
        @students=[]
        @i=-1
    end

    def enroll_students(student)
        @i+=1
        @students[@i]=student
    end

    def class_report

    p "Course : #{@title}"
    p "Teacher : #{teacher.name}"
    p "Subject : #{teacher.subject}"

    p "------ Students ------"
    @students.each do |student|
        student.report
    end

    p "------ Average Marks ------"

    averages = @students.map(&:average)
    puts averages.inspect

    p "------ Grade Summary ------"

    summary = @students.group_by(&:grade)

    summary.each do |grade, students|
        p "#{grade} => #{students.map(&:name).join(', ')}"
    end
end
end


teacher = Teacher.new("Matz", "Ruby")

course = Course.new("Ruby on Rails", teacher)

s1 = Student.new("Sowmiya", 101)
s1.add_mark(95)
s1.add_mark(60)
s1.add_mark(50)

s2 = Student.new("Kavi", 102)
s2.add_mark(70)
s2.add_mark(60)
s2.add_mark(55)

s3 = Student.new("priya", 103)
s3.add_mark(90)
s3.add_mark(80)
s3.add_mark(70)

course.enroll_students(s1)
course.enroll_students(s2)
course.enroll_students(s3)

course.class_report

