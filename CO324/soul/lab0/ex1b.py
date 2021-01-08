from ex1a import *

ids,logins = load_users_to_lists('userdata.txt')
combined = zip(ids, logins)
print(combined)

combined2 = zip(logins,ids)
print(combined2)

help(zip)