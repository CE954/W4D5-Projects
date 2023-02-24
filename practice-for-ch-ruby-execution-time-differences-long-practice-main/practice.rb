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