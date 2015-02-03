# input: two arrays already sorted
# output: one array in sorted order
# process:
#    create a "return container", an array
#    compare the first element from my_array to the first element of alices_array
#    while my_array.length > 0 || alices_array.length > 0
#        if "my element" is greater than "alices element"
#            shift "my element" out of the front
#            place "my element" into "return container"
#        elsif "alices element" is greater than "my element"
#            shift "alice's element" out of the front
#            place "alice's element" into "return container"
#        elsif alices_array is empty?
#            add my_array to "return container"
#        elsif my_array is empty?
#            add my_array to "return container"
#        else
#            ret
#        end
#    end


def merge_arrays(arr_one, arr_two)
    ret = []
    while arr_one.length > 0 || arr_two.length > 0
        if arr_one[0] < arr_two[0]
            ret << arr_one.shift
        elsif arr_two[0] < arr_one[0]
            ret << arr_two.shift
        elsif arr_two.empty?
            ret += arr_one
        elsif arr_one.empty?
            ret += arr_two
        else
            ret
        end
    end
    ret
end


def merge_arrays(arr_one, arr_two)
    ret = []
    while arr_one.length > 0 || arr_two.length > 0
        return ret += arr_two if arr_one.empty?
        return ret += arr_one if arr_two.empty?
        if arr_one[0] < arr_two[0]
            ret << arr_one.shift
        elsif arr_two[0] < arr_one[0]
            ret << arr_two.shift
        end
    end
    ret
end

def merge_arrays(arr_one, arr_two)
    ret = []
    while arr_one.any? || arr_two.any?
        return ret += arr_two if arr_one.empty?
        return ret += arr_one if arr_two.empty?
        if arr_one[0] < arr_two[0]
            ret << arr_one.shift
        elsif arr_two[0] < arr_one[0]
            ret << arr_two.shift
        end
    end
    ret
end

my_array     = [3,4,6,10,11,15]
alices_array = [1,5,8,12,14,19]

merge_arrays(my_array, alices_array)
# prints [1,3,4,5,6,8,10,11,12,14,15,19]

# T = 0(a+b)
# S = 0(a+b)