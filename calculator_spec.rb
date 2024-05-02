require 'rspec'
require_relative 'calculator'

RSpec.describe Calculator do

    describe 'addition' do

        it 'test when the input is empty string' do
            calc = Calculator.new
            res = calc.add("")
            expect(res).to eq(0)
        end

        it 'test when the input contains only single digit' do
            calc = Calculator.new
            res = calc.add("1")
            expect(res).to eq(1)
        end

        it 'test when the input contains multiple digits with comma(,) separation' do
            calc = Calculator.new
            res = calc.add("1,2,3,4,5")
            expect(res).to eq(15)
        end
    end
end