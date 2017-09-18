require "./lib/statement.rb"

RSpec.describe Statement do
  describe "#isQuestion?" do

    it "identifies a simple question" do
      s = Statement.new("What is your name?")
      expect(s.isQuestion?).to be_truthy
    end

    it "rejects things that are not questions" do
      s = Statement.new("Hi, there my name is x.")
      expect(s.isQuestion?).to be_falsey
    end

  end
end
