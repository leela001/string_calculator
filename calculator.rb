class Calculator

    def add(str_input)
        return 0 unless !str_input.empty?

        # default delimiter
        delimiter = ","

        # checks when the input string starts with //
        if str_input.start_with?("//")
            delimiter = str_input[2]
            str_input = str_input.gsub("//", "")
        end

        # replacing the "\n" with default delimiter
        str_input = str_input.gsub("\n", delimiter)

        # split the string input into an array of substrings using the delimiter
        substring_input = str_input.split(delimiter)

        # convert each substring to an integer and returns the integer array
        num_array = substring_input.map(&:to_i)

        # check for the negative numbers
        negative_numbers = num_array.select {|num| num < 0}

        # it will throw an exception if the negative_numbers array contains numbers
        if negative_numbers.any?
            raise "negative numbers not allowed #{negative_numbers.join(',')}"
        end

        # calculates the sum of integers
        num_array.sum
    end
end