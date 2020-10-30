def load_users_to_dict(filename):

    users = dict()

    with open(filename) as f:

        for line in f:

            id, login = line.split(',')
            users[id] = login
            # add details to the users dict

    return users


users = load_users_to_dict("userdata.txt")

print(users['98848'])