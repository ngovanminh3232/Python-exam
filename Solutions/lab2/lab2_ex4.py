from datetime import datetime

class User:

  def __init__(self, username, password):
    self.username = username
    self.password = password

  def welcome(self):
    print('Welcome,', self.username)

  def check_password(self, password):
    return self.password == password

  
class SubscribedUser(User):

  def __init__(self, username, password, expired_date):
    super().__init__(username, password)
    self.expired_date = expired_date

  def is_expired(self):
    return datetime.now() > self.expired_date


# driver code
user = User('mindx', '12345')
user.welcome()
print(user.check_password('1234'))

s_user = SubscribedUser('s_mindx', '1234', datetime(2021, 1, 1))
s_user.welcome()

print(s_user.check_password('1234'))
print(s_user.is_expired())