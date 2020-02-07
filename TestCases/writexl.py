import openpyxl

wk = openpyxl.Workbook()
sh = wk.active
sh.title = "writing"
print(wk.active.title)

sh['A4'].value = "surabhi"
#To create new sheet and insert data

wk.create_sheet(title="testing")
sh1 = wk['testing']
sh1['A3'].value = "Hello dear"

#To remove the sheet

wk.remove(wk['testing'])

#To save 
wk.save("C:\\Users\\sks\\Desktop\\write.xlsx")
