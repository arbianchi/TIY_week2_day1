
require "pry"

# Implement mathematical operators +, - and ==
# Allow users to initialize Currency objects with a string - i.e. Currency.new("$5") or Currency.parse("$5")
# Allow users to convert: Currency.new(20, :usd).to(:gbp) (feel free to hardcode conversion rates)
# Level 3
# Automatically convert if users try to add two currencies of different denominations

class Currency

  def initialize amount, denomination
    @amount = amount
    if @denomination == nil
      @denomination = :usd
    else @denomination = denomination
    end
    @gbp = @amount * 1.6
  end

  def amount
    @amount
  end

  def denomination
    @denomination
  end

  def times times
    @amount * times
  end

  def plus value
    
    @amount + value.amount
  end

  def minus value
    @amount - value.amount
  end

  def togbp

    @gbp
  end

end

a = Currency.new(5, :usd)
b = Currency.new(10, :usd)
c = Currency.new(5, :gbp)

puts a.amount
puts a.denomination
puts a.times(4)
puts a.times(4)
puts a.plus(b)
puts b.minus(a)
puts a.togbp
