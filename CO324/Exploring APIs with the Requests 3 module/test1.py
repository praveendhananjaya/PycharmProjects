import requests

with requests.Session() as session:
    session.headers['Authorization'] = 'token 0d4275318e150e118cafcd7341291cb9869f31d3'
    # token
    git_memebrs = session.get('https://api.github.com/repos/AnjanaSenanayake/f5n_server/subscribers')
    print(git_memebrs)
    print(git_memebrs.text)