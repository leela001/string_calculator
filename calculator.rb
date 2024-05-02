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

        # calculates the sum of integers
        num_array.sum
    end
end