#This is a python file
print("Hello how r u?")
samplenum=input("Enter a number")

for i in range(1,11):
    if(int(samplenum)*i%10 == 0):
        print("continue")
        continue
    print(i*int(samplenum))

emailaddress="testingworldindia@gmail.com"
print(emailaddress[0:7])
l1=[1,2,"sur",3.5,2]
print(l1)
tuple1=(2,3,4,"test")
print("hello:", l1.count(2))