# Using before and @student
# Using let(:student)
# Using subject(:student)


require_relative "../student"

RSpec.describe "initialize the student" do

    stu =Student.new("abii")
    it "Pass Answers" do
        expect(stu.greet).to eq("Hello abii")
    end
end

p "=============================================================="

RSpec.describe "initialize the student" do

    before do
        @stu =Student.new("abii")
    end

    it "Pass Answers" do
        expect(@stu.greet).to eq("Hello abii")
    end
end

p "=============================================================="

RSpec.describe "initialize the student" do
    let(:stu)do
        Student.new("abii")
    end

    it "Pass Answers" do
        expect(stu.greet).to eq("Hello abii")
    end
end

p "=============================================================="


RSpec.describe "initialize the student" do
    subject(:stu) do
        Student.new("abii")
    end

    it "Pass Answers" do
        expect(stu.greet).to eq("Hello abii")
    end
end
