class Prime
  def self.is_prime?(n)
    # knowns
    if n == 2
      return true
    elsif (n.even? || n ==1)
      return false
    end

    c = Math.sqrt(n).ceil
    (2..c).each do |i|
      if n % i == 0
        return false
      end
    end
    return true
  end
end
