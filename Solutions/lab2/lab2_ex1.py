class Rectangle:

  def __init__(self, height, width):
    self.height = height
    self.width = width

  def __str__(self):
    return 'Rectangle object with height = ' +\
          f'{self.height} and width = {self.width}'

  def calculate_perimeter(self):
    return (self.height + self.width)*2
    
  def calculate_area(self):
    return self.height * self.width


# driver code
rect = Rectangle(2, 1)
print(rect)