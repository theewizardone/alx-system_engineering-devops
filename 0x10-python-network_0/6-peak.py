def find_peak(list_of_integers):
    if not list_of_integers:
        return None
    low, high = 0, len(list_of_integers) - 1

    while low < high:
        mid = (low + high) // 2

        if list_of_integers[mid] > list_of_integers[mid + 1]:
            high = mid
        else:
            low = mid + 1
    return list_of_integers[low]
#Example
my_list = [1, 3, 20, 4, 1, 0]
peak_value = find_peak(my_list)
print(f"The peak in the list is: {peak_value}")
