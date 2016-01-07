require('rspec')
require('coin_combination')
require('pry')

describe('possible coin combinations') do
  it('returns a 2 quarters and 1 penny if change is 51 cents') do
    expect(51.coin_slide()).to(eq([2,0,0,1]))
  end
end
