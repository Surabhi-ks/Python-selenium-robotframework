import os

def create_folder():
    os.mkdir("C:\\Testingworldindia")

def create_sub_folder():
    os.mkdir("C:\\Testingworldindia\\India")

def create_folder_with_name(foldername):
    os.mkdir("C:\\" + foldername)

def create_sub_folder_with_name(subfoldername):
    os.mkdir("C:\\Testingworldindia\\" + subfoldername)

def concatenate_two_values(val1,val2):
    val3=val1 + " " + val2
    return val3