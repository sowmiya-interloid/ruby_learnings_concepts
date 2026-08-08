RSpec.describe "Calculator" do

  it "adds numbers", :focus do
    expect(2 + 3).to eq(5)
  end

  it "subtracts numbers" do
    expect(5 - 2).to eq(3)
  end

end