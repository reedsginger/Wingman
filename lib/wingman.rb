require "./statement.rb"
require "./question.rb"
def Wingman (new_conversation = true)
  puts "Hi there my name is Wingman!" if new_conversation

  statement = gets
  s = Statement.new(statement.chomp)
  reason(s)

end

def reason(s)
  if s.isQuestion?
    questions(Question.new(s.raw))
  else
    puts "I only answer questions."
  end
end

def questions(s)
  if s.aboutMe?
    puts "Oooo I love questions about myself!"
  else
    puts "I only like to talk about myself."
  end

  Wingman(false)
end

Wingman()
