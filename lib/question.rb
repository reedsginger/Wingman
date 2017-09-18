class Question

  def initialize(s)
    @statement = s
  end

  def aboutMe?
    @statement.downcase.include?("you") || @statement.downcase.include?("your")
  end

end
