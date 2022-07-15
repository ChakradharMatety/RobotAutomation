a=100;
print(a)
str="chakradhar"
print(str)
b=12.5
print(b)
chr='A'
print(chr)
list=[10,10,"chakradhar",12.5]
print(list)
list.pop(1)
print(list)
list2=[10,"chakradhar",12.5,10]
# list2.pop(3)
# print(list2)
for val in list:
    print(val)

count=0
def removeitemfromlist(index,list,value):
    list.pop(index)

removeitemfromlist(3,list2,10)
print("----------")
print(list2)
