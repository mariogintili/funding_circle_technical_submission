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
    return true if [2,3].include?(num)
    return false if (0 == num % 2)
    return false if not_target_and_divisible(num: num, target: 3)
    return false if not_target_and_divisible(num: num, target: 5)
    return false if not_target_and_divisible(num: num, target: 7)
    return false if not_target_and_divisible(num: num, target: 11)
    true
  end

  def not_target_and_divisible(num:, target:)
    (num != target) && (0 == num % target)
  end
end
