# How do you return the word "example" from the following array?

arr = [["test", "hello", "world"],["example", "mem"]]

p arr[1][0]

# get last item in array via last method, which returns the arrey: ["example", "mem"]
# then get first item from that array via the first method
p arr.last.first
