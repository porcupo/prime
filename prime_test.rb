require 'minitest/autorun'
require 'prime'

require_relative 'prime'

# first 100 primes
$primes = Prime.first(100)

# first 100 composites
composites = []
(0..$primes.last).each { |x| composites << x unless $primes.include?(x) }
$composites = composites.first(100)

# ensure prime.rb correctly determines primes and composites

class PrimeTest < Minitest::Test
  $primes.each do |p|
    define_method("test_#{p}_is_prime") do
      assert_equal(true, Prime.is_prime?(p))
    end
  end

  $composites.each do |c|
    define_method("test_#{c}_is_not_prime") do
      assert_equal(false, Prime.is_prime?(c))
    end
  end
end
