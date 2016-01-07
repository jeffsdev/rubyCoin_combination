class Fixnum
  def coin_slide
    #coins = {25 => "quarter", 10 => "dime", 5 => "nickel", 1 => "penny" }
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
    return total_coins
  end
end
