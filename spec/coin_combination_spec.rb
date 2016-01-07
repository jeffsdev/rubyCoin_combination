require('rspec')
require('coin_combination')
require('pry')

describe('possible coin combinations') do
  it('returns 2 quarters and 1 penny if change is 51 cents') do
    expect(51.coin_slide()).to(eq([2,0,0,1]))
  end
  it('returns 3 quarters, 2 dimes, and 4 pennies if change is 99 cents') do
    expect(99.coin_slide()).to(eq([3,2,0,4]))
  end
  it('returns 4 pennies if change is 4 cents') do
    expect(4.coin_slide()).to(eq([0,0,0,4]))
  end
  it('returns 1 dime if change is 10 cents') do
    expect(10.coin_slide()).to(eq([0,1,0,0]))
  end
  it('returns 1 nickel and 2 pennies if change is 7 cents') do
    expect(7.coin_slide()).to(eq([0,0,1,2]))
  end
end
