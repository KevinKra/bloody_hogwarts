require "rails_helper"

RSpec.describe "/students" do
  before :each do
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
  end

  it "I see a list of students with the following information: name, age, house" do
    visit "/students"

    within("#student-#{@student_1.id}") do
      expect(page).to have_content(@student_1.name)
      expect(page).to have_content(@student_1.age)
      expect(page).to have_content(@student_1.house)
      expect(page).to_not have_content(@student_2.name)
    end
    within("#student-#{@student_2.id}") do
      expect(page).to have_content(@student_2.name)
      expect(page).to have_content(@student_2.age)
      expect(page).to have_content(@student_2.house)
    end
  end
end