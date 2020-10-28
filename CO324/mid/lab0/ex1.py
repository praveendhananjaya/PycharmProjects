
def load_users_to_lists(filename):

    ids, logins = list(), list()

    with open(filename) as f:

        for line in f:

            id, login = line.split()

            # add details to the two lists using list.append()

    return ids, logins