def load_users_to_dict(filename):

    users = dict()

    with open(filename) as f:

        for line in f:

            id, login = line.split()

            users[id] = login
            # add details to the users dict


    return users


data = load_users_to_dict('userdata.txt')
print(data['553224'])