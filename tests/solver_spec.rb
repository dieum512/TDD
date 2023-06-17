require_relative '../solver'

describe Solver do
  before(:each) { @solver = Solver.new }

  describe '#factorial' do
    it 'throw an error if input is negative number' do
      expect { @solver.factorial(-1) }.to raise_error(
        'Input must be positive',
        RuntimeError
      )
    end

    it 'input is zero should return 1' do
      expect(@solver.factorial(0)).to eql 1
    end

    it 'positive input should return factorial' do
      expect(@solver.factorial(5)).to eql 120
    end
  end

  describe '#reverse' do
    it 'returns a reversed string' do
      expect(@solver.reverse('hello')).to eql 'olleh'
    end
  end

  describe '#fizzbuzz' do
    it 'returns fizz for the input divisible by 3' do
      expect(@solver.fizzbuzz(9)).to eql 'fizz'
    end
    it 'returns buzz for the input divisible by 5' do
      expect(@solver.fizzbuzz(10)).to eql 'buzz'
    end
    it 'returns fizzbuzz for the input divisible by 3 and 5' do
      expect(@solver.fizzbuzz(15)).to eql 'fizzbuzz'
    end

    it 'returns number as string for any other number' do
      expect(@solver.fizzbuzz(7)).to eql '7'
      expect(@solver.fizzbuzz(7).class).to eql String
    end
  end
end
