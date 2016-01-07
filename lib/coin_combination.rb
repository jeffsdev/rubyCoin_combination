class Fixnum
  require 'active_support/inflector'
  def coin_slide
    coin_values = [25, 10, 5, 1]
    raw_change = self
    counter = 0
    total_coins = []
    until counter.==(4)
      temp_array = raw_change.divmod(coin_values[counter])
      total_coins << temp_array[0]
      raw_change = temp_array[1]
      counter += 1
    end
    return coins_to_words(total_coins)
  end

  def coins_to_words(total_coins)
    test = []
    coins = {0 => "Quarter", 1 => "dime", 2 => "nickel", 3 => "penny" }
    total_coins.each_with_index do |coin, index|
      unless coin == 0
        coin > 1 ? amount = coins.fetch(index).pluralize : amount = coins.fetch(index)
        test << "#{coin} #{amount} "
      end
    end
    return test.join
  end
end
