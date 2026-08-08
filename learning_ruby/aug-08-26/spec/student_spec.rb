require '../student'

RSpec.describe Student do
    let(:student) { Student.new("Sowmiya",30)}

    let(:passed_student) { Student.new("Sowmiya", 80) }
    
    it "returns the correct name" do
        expect(student.name).to eq("Sowmiya")
    end

    it "returns the correct mark" do
        expect(student.mark).to eq(30)
    end

    it "returns true when mark is 80" do
        expect(passed_student.passed?).to be true
    end

    it "returns false when mark is 30" do
        expect(student.passed?).to be false
    end
end