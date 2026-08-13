require 'minitest/autorun'
require_relative 'user.rb'

describe User do

    it "valid email and valid name" do
        user = User.new("Sowmiya","sow@123")
        assert user.valid?
    end

    it "valid email and invalid name" do
        user = User.new(nil,"sow@123")
        refute user.valid?
    end

    it "valid name and invalid email" do
        user = User.new("Sowmiya", nil)
        refute user.valid?
    end
end