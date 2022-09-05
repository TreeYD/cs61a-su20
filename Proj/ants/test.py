class A:
    def __init__(self,v=1):
        self.v = v
class B(A):
    def __init__(self,v):
        A.__init__(self)
        print(self.v)
b = B(2)