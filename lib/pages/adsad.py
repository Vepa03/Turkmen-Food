# for i in range(0, 51):
#     if i % 1==0:
#         print(i, end=" ")

# sum = 0
# n =-1
# counter= 0
# while n!=0:
#     n = int(input(" "))
#     sum= sum + n
#     counter = counter +1
# print("sum: ", sum/(counter-1))

sum = 0
n = -1
counter = 0
while True:
    n = int(input(""))
    if n == 0:
        break
    if n % 2 == 0:
        sum = sum+n
        counter = counter +1
print("avg : ", sum/counter  )     