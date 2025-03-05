# To Create new List that contains the names of employees who work in the 'Sales'department,all in upercase

employees=[{"name":"John Doe","department":"Sales"},
           {"name":"Jane Smith","department":"Marketing"},
           {"name":"Emily Johnson","department":"Sales"},
           {"name":"Michale Brown","department":"HR"},
           ]
# Creating new List 
Sales_emp=[emp["name"].upper()for emp in employees if emp["department"]=="Sales"]
print(Sales_emp)


'''Output:
['JOHN DOE', 'EMILY JOHNSON'] '''
