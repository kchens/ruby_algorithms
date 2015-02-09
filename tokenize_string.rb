# input: a string, and an array of letters
# output: a flattened array of all the split "words"
# process:
# create a return container = []
# letters = string.split("")
# letters.map do |let|
#   " " if let == array_of_letters[0] or let == array_of_letters[1]
# end
# join the letters together on every space
# split the letters again on A space

def tokenize_string(word, letters_arr)
    letters = word.split("")
    array = letters.map! do |let|
        let.downcase!
        if let == letters_arr[0] or let == letters_arr[1]
            " "
        else
            let
        end
    end
    letters = letters.join("")
    letters.split(" ")
end

p tokenize_string("Supercalifragilisticexpialidocious", ["s", "p"]) == ['u', 'ercalifragili', 'ticex', 'ialidociou']