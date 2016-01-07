require('rspec')
require('coin_combination')
require('pry')

describe('possible coin combinations') do
  it('returns 2 quarters') do
    expect(50.coin_slide()).to(eq('2 Quarters'))
  end
  it('returns 1 quarter') do
    expect(25.coin_slide()).to(eq('1 Quarter'))
  end
  it('returns 3 quarters, 2 dimes, and 4 pennies if change is 99 cents') do
    expect(99.coin_slide()).to(eq('3 Quarters 2 dimes 4 pennies'))
  end
  it('returns 4 pennies if change is 4 cents') do
    expect(4.coin_slide()).to(eq('4 pennies'))
  end
  it('returns 1 dime if change is 10 cents') do
    expect(10.coin_slide()).to(eq('1 dime'))
  end
  it('returns 1 nickel and 2 pennies if change is 7 cents') do
    expect(7.coin_slide()).to(eq('1 nickel 2 pennies'))
  end
  it('returns 1 nickel and 2 pennies if change is 7 cents') do
    expect(150.coin_slide()).to(eq('6 Quarters'))
  end
end
