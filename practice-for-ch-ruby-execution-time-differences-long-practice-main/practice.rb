### Phase I

# First, write a function that compares each element to every other element of the
# list. Return the element if all other elements in the array are larger.  
# What is the time complexity for this function?

def my_min(list)
    min = list[0]
    list.each_with_index do |ele, i|
        list.each_with_index do |ele_2, i_2|
            current_min = list[0]
            if ele_2 < ele && i_2 > i
                current_min = ele_2
                if current_min < min 
                    min = current_min
                end
            end
        end
    end
    min
end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min(list)  # =>  -5

# O(n^2)

# ### Phase II

# Now rewrite the function to iterate through the list just once while keeping
# track of the minimum. What is the time complexity?

    def my_min2(list)
        list.min
    end

# O(n)

## Largest contiguous sub-sum

You have an array of integers and you want to find the largest contiguous
(together in sequence) sub-sum. Find the sums of all contiguous sub-arrays and
return the max.

Example:

```ruby
list = [5, 3, -7]
largest_contiguous_subsum(list) # => 8

# possible sub-sums
[5]           # => 5
[5, 3]        # => 8 --> we want this one
[5, 3, -7]    # => 1
[3]           # => 3
[3, -7]       # => -4
[-7]          # => -7
```

Example 2:

```ruby
list = [2, 3, -6, 7, -6, 7]
largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])
```

Example 3:

```ruby
list = [-5, -1, -3]
largest_contiguous_subsum(list) # => -1 (from [-1])
```

### Phase I

Write a function that iterates through the array and finds all sub-arrays using
nested loops. First make an array to hold all sub-arrays. Then find the sums of
each sub-array and return the max.

Discuss the time complexity of this solution.

def subsum(list)
    subs = []
    (0...list.length).each do |i|
        (0...list.length).each do |j|
            subs << list[i..j] unless list[i..j].empty?
        end
    end
    subsums = []

    subs.each {|sub| subsums << sub.sum} 

    return subsums.max
end


### Phase II

Let's make a better version. Write a new function using O(n) time with O(1)
memory. Keep a running tally of the largest sum. To accomplish this efficient
space complexity, consider using two variables. One variable should track the
largest sum so far and another to track the current sum. The rest is left to
you.

Get your story straight, and then explain your solution's time complexity to
your Instructor.


def bettersubsum(list) [2,3,-6,7,-6,7]
    max = list[0]
    current_max = 0
    (0...list.length).each do |i| #going through the list
        if list[i] > current_max + list[i] 2 > 2 +2
            current_max = list[i]
        else 
            current_max = current_max + list[i] 2 +2 = 4 
        end
    
        max = current_max if current_max > max
    end

    return max
end

def bettersubsum(list) [2,3,-6,7,-6,7]
    max = list[0]
    current_max = list[0]
    (0...list.length).each do |i| 
        max = max + list[i]
        if current_max < max
            current_max = max

        else 
            current_max = current_max + list[i] 
        end
    
        max = current_max if current_max > max
    end

    return max
end

def bettersubsum(list)
    global_max = list[0]
    current_max = 0
    (0...list.length).each do |i|
        current_max = c



 