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