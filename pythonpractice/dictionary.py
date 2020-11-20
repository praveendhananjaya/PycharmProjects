data = {"crystal":"red","ryu":"black"}
print(data)
print(data['crystal'])

print('yoshi' in data)
print(data.keys())

print(list(data.keys()))
values = (list(data.values()))
print(values.count('red'))

data['praveen'] = 'wite'

print(data)

person = dict(name="praveen",age=55)
print(person)