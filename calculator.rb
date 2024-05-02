class Calculator

    def add(str_input)
        return 0 unless !str_input.empty?

        # default delimiter
        delimitor = ","

        # split the string input into an array of substrings using the delimiter
        substring_input = str_input.split(delimitor)

        # convert each substring to an integer and returns the integer array
        num_array = substring_input.map(&:to_i)

        # calculates the sum of integers
        num_array.sum
    end
end