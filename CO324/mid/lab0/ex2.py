
def load_users_to_lists(filename):

    ids, logins = list(), list()

    with open(filename) as f:

        for line in f:

            id, login = line.split()
            ids.append(id)
            logins.append(login)
            # add details to the two lists using list.append()

    return ids, logins


ids, logins = load_users_to_lists("userdata.txt")

combined = zip(ids, logins)
print(combined)
print(set(combined))

combined2 = zip(logins,ids)
print(combined2)
print(set(combined2))