# Exercise 4.1 - Grokking Algorithms
# Write out code for book's sum demo
def sum(arr):
    if len(arr) == 1:
        return arr[0]
    else:
        return arr[0] + sum(arr[1:])


x = sum([2,4,6])
print "{}{}".format("My answer to 4.1: ", x)

# Book answer to 4.1
def sum_book(list):
    if list == []:
        return 0
    return list[0] + sum(list[1:])

x = sum_book([2,4,6])
print "{}{}".format("Book answer to 4.1: ", x)
