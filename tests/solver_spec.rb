require_relative '../solver'

describe Solver do
  before(:each) { @solver = Solver.new }

  describe '#factorial' do
    it 'throw an error if input is negative number' do
      expect { @solver.factorial(-1) }.to raise_error(
        'input can not be negative',
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

  describe '#reverse_string' do
    it 'return reversed string' do
      expect(@solver.reverse_string('hello')).to eql 'olleh'
    end
  end