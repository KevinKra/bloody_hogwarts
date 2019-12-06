require "rails_helper"

RSpec.describe "/students/:id" do
  before :each do
    @course_1 = Course.create(name: "Potions")
    @course_2 = Course.create(name: "Dark Arts")
    @course_3 = Course.create(name: "Muggle Studies")

    @student_1 = Student.create(
                              name: "Harry Pooter", 
                              age: 17, 
                              house: "GriffyDoor"
                            )
    @student_2 = Student.create(
                              name: "Run Weasles", 
                              age: 16, 
                              house: "GriffyDoor"
                            )

    @course_1.students << @student_1
    @course_2.students << @student_1
    @course_3.students << @student_1
    @course_1.students << @student_2
    @course_2.students << @student_2
  end

  it "I see a list of each students courses" do
    visit "/students/#{@student_1.id}"

    expect(page).to have_content(@course_1.name)
    expect(page).to have_content(@course_2.name)
    expect(page).to have_content(@course_3.name)

    visit "/students/#{@student_2.id}"

    expect(page).to have_content(@course_1.name)
    expect(page).to have_content(@course_2.name)
    expect(page).to_not have_content(@course_3.name)

  end
end