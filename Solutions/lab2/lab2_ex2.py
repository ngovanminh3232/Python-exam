class MathList:

  def __init__(self, values):
    self.values = values
    self.length = len(values)

  def __str__(self):
    return str(self.values)

  def __add__(self, value):
    for i in range(self.length):
      self.values[i] += value
    return self

  def __sub__(self, value):
    for i in range(self.length):
      self.values[i] -= value
    return self


# driver code
m_list= MathList([1, 2, 3, 4, 5])
print(m_list)

m_list += 2
print(m_list)