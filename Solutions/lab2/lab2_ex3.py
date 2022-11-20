class Square:

  def __init__(self, size):
    self.size = size
    
  def cal_area(self):
    return self.size ** 2


class Cube(Square):

  def cal_area(self):
    return 6 * self.size ** 2

  def cal_volume(self):
    return self.size ** 3


# driver code
square = Square(2)
print('Square area:', square.cal_area())

cube = Cube(2)
print('Cube area:', cube.cal_area())
print('Cube volume:', cube.cal_volume())