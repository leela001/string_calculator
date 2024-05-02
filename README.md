## StringCalculator
Calculator is a Ruby class that provides methods for performing addition operations on strings containing comma-separated numbers.

## Features
- Supports addition of comma-separated(`"1,2,3"`) numbers.
- Supports custom delimiters(`"//;\n1;2"`) specified at the beginning of the input string.
- Throws an exception when negative numbers(`"-1,2,-3"`) are encountered in the input string.

## Running Tests
`bundle exec rspec calculator_spec.rb`
