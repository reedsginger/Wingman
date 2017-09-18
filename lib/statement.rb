class Statement

  def initialize(statement)
    @statement = statement
  end

  def isQuestion?
    @statement.include?("?")
  end

  def raw
    @statement
  end

end
