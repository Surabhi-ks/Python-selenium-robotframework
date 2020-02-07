try:
    user_input1 = input("Please enter a number:")
    user_input2 = input("Please enter a number:")
    res = int(user_input1) + int(user_input2)
    print("Sum is:", res)
except:
    print("Your input is incorrect, please enter only numbers")

finally:
    print("Inside finally block")

print("Hiii I am at the end of the program")
