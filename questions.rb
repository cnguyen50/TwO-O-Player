class Question
  attr_reader :num1, :num2

  def self.num1
    @num1 = rand(1..10)
  end

  def self.num2
    @num2 = rand(1..10)
  end

  def self.answer(numbers)
    numbers.to_i == (@num1 + @num2)
  end
end