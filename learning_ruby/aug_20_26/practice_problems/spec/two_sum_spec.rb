require_relative "../two_sum.rb"

RSpec.describe "Two Sum program" do

    it "pairs exists means returns the indicies" do
        nums =[2,3,4,5]
        target = 9
        expect(two_sum(nums,target)).to eq([2,3])
    end

    it "No pair exists" do
        nums = [2,3,4,5]
        target = 10
        expect(two_sum(nums,target)).to eq([])
    end

    it "returns indexes for multiple pairs" do
        nums = [1,3,2,4]
        target = 5
        expect(two_sum(nums,target)).to eq([0,3,1,2])
    end

    it "returns indexes for Negative numbers" do
        nums = [-1,2,3,4]
        target = 1
        expect(two_sum(nums,target)).to eq([0,1])
    end

    it "returns indexes for Duplicate numbers" do
        nums = [3,3]
        target = 6
        expect(two_sum(nums,target)).to eq([0,1])
    end
end