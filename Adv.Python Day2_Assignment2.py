# To create new List that contain the Domain part only in emails List
emails=["alice@example.com","bob@sample.org","charlie@mydomain.net"]
# creating new List
Domains=[email.split("@")[1] for email in emails]
print(Domains)



'''Output:
['example.com', 'sample.org', 'mydomain.net'] '''
