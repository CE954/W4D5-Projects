


def bad_two_sum?(arr, target_sum)
    arr.each_with_index do |num1, idx_1|
        arr.each_with_index do |num2, idx_2|
            return true if idx_2 > idx_1 && num1 + num2 == target_sum
        end
    end

    return false
end

# Write a second solution called `okay_two_sum?` that uses sorting. Make sure it
# works correctly.

# **Hint:** There are a couple ways to solve this problem once the array is
# sorted. One way involves using a very cheap algorithm that can only be used on
# sorted data sets. What are some such algorithms you know?
