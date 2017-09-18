require "./lib/question.rb"

RSpec.describe Question do
  describe "#aboutMe?" do
    context "is about me" do
      it "include you in the question" do
        s = Question.new("How old are you?")
        expect(s.aboutMe?).to be_truthy
      end
      it "include your in the question" do
        s = Question.new("What is your name?")
        expect(s.aboutMe?).to be_truthy
      end
    end
    context "is not about me" do
      it "is a general question" do
        s = Question.new("What time is it?")
        expect(s.aboutMe?).to be_falsey
      end
    end
  end
end
