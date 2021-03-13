arr = [4, 3, 78, 2, 0, 2]

def bubble_sort(array)
    isSorted = false
    while isSorted != true
        isSorted = true
        for i in 0...(array.length-1)
            if (array[i] > array[i+1])
                array[i], array[i+1] = array[i+1], array[i]
                isSorted = false
            end
        end
    end
    array
end

p bubble_sort(arr)