class Application
  attr_accessor :options, :number, :ui
  COUNT_ARG = "--count"

  def initialize(options:)
    @options = options
  end

  def validate
    idx = options.index(COUNT_ARG)

    if !idx
      raise ArgumentError.new("Invalid input, please invoke '--count 10' with a valid number")
    end

    number = options[idx + 1].to_i

    if 0 >= number
      raise ArgumentError.new("--count #{options[idx + 1]} must be a positive integer")
    end

    self.number = number
  end

  def build
    grid    = Grid.new(numbers: prime_numbers.take(number))
    self.ui = Ui.new(grid: grid)
  end

  def run
    validate
    build
    ui.draw
  end

  private

  def prime_numbers
    @prime_numbers ||= PrimeNumbers.new
  end
end
