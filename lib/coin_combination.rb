class Fixnum
  def coin_slide
    #coins = {25 => "quarter", 10 => "dime", 5 => "nickel", 1 => "penny" }
    coins = [25, 10, 5, 1]
    change = self
    counter = 0
    total_change = []
    until counter.==(4)
      temp_array = change.divmod(coins[counter])
      total_change << temp_array[0]
      change = temp_array[1]
      counter = counter.+(1)
    end
    return total_change
  end
end
