describe "numbers" do

    let(:numbers) {[10, 20, 30, 40]}

    it "Every num is divisible by 10" do
        expect(numbers).to satisfy do |nums|
            nums.all? {|num| num%10 == 0}
        end
    end



end