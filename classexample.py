class A:

    def __init__(self,a,b):
        print("This is constructor")
        c= a + b
        print("result is:", c)
        print("By default this is called when object is created")

    def welcome(self):
        print("Welcome to first class method")

    def sum(self,val1,val2):
        val3 = val1+val2
        print("sum of two numbers are: " + str(val3))

    def multiply(self,val1,val2):
        val3 = val1 * val2
        return val3

#obj1=A(2,3)
#obj1.welcome()
#obj1.sum(5,6)
#multiplyres = obj1.multiply(5,8)
#print("Result of multiplication is:",multiplyres)
