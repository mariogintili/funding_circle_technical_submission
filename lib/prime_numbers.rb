class PrimeNumbers
  def take(size)
    array   = []
    counter = 2

    while array.length != size
      if prime?(counter)
        array.push(counter)
      end
      counter += 1
    end

    array
  end

  private

  def prime?(num)
    Prime.prime?(num)
  end
end
