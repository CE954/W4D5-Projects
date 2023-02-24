# ## Phase I

# Write a method `#first_anagram?` that will generate and store all the possible
# anagrams of the first string. Check if the second string is one of these.

# **Hints:**

# * **For testing your method, start with small input strings; otherwise you might
#   be waiting a while...**
# * If you're having trouble generating the possible anagrams, look into
# [this method][array-permutation-docs].

# What is the time complexity of this solution? What happens if you increase the
# size of the strings?


def phase1(str1,str2)
    possible_anagrams = []
    ana_array = str1.split("").permutation.to_a
    print ana_array
    ana_array.each {|array| possible_anagrams << array.join("")}
    print possible_anagrams
    possible_anagrams.include?(str2)

end

# Write a method `#second_anagram?` that iterates over the first string. For each
# letter in the first string, find the index of that letter in the second string
# (hint: use `Array#find_index`) and delete at that index. The two strings are
# anagrams if an index is found for every letter and the second string is empty at
# the end of the iteration.

# Try varying the length of the input strings. What are the differences between
# `#first_anagram?` and `#second_anagram?`?

def phase2(str1,str2)
    key = str2.split("")
    str1.each_char do |char|
        i = key.find_index(char)
        key.delete_at(i)
    end
print key
    key.empty?

end

## Phase III

# Write a method `#third_anagram?` that solves the problem by sorting both strings
# alphabetically. The strings are then anagrams if and only if the sorted versions
# are identical.

# What is the time complexity of this solution? Is it better or worse than
# `#second_anagram?`?

def phase3(str1, str2)
    str1.split("").sort == str2.split("").sort
end

# ## Phase IV

# Write one more method `#fourth_anagram?`. This time, use two hashes to store the
# number of times each letter appears in both words. Compare the resulting hashes.

# What is the time complexity?

def phase4(str1, str2)
    hash_1 = Hash.new(0)
    hash_2 = Hash.new(0)
    str1.each_char {|char| hash_1[char] += 1}
    str2.each_char {|char| hash_2[char] += 1}
    hash_1 == hash_2
end