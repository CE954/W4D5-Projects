


def bad_two_sum?(arr, target_sum)
    arr.each_with_index do |num1, idx_1|
        arr.each_with_index do |num2, idx_2|
            return true if idx_2 > idx_1 && num1 + num2 == target_sum
        end
    end

    return false
                
end


Given an array of unique integers and a target sum, determine whether any two
integers in the array sum to that amount.

ruby
def two_sum?(arr, target_sum)
    # your code here...
end

arr = [0, 1, 5, 7]
two_sum?(arr, 6) # => should be true
two_sum?(arr, 10) # => should be false

If you weren't worried about time complexity, what would be the most
straightforward way to solve this problem? To start with, you could check every
possible pair. If you sum each element with every other, you're sure to either
find the pair that sums to the target or determine that no such pair exists.

This is the **brute-force** solution. It's essentially hitting the problem with
a sledge hammer. There are faster and more elegant ways to solve the problem,
but you know for sure that this will get the job done.

Let's start by implementing the brute force solution. Write a method called
`bad_two_sum?` that checks every possible pair.

Make sure that you don't pair an element with itself. However, you don't need to
bother checking for summing the same pair twice; that won't affect your result.

(**Note:** You can cut the running-time significantly by returning early and by
not checking pairs more than once. However, these micro-optimizations will not
improve the time complexity of the solution. Do you see why?)

Once you're done, write a comment with your solution's time complexity.




