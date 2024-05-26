# @version ^0.2.16


x: public(String[10])
owner: public(address)

@external
def __init__():
    self.owner = msg.sender

@internal
def intfunc(sender: address, y: String[10]):
    #assert self.owner == msg.sender, "!owner"
    if  self.owner != sender:
        raise "!owner"
    self.x = y


@external
def setX(y: String[10]):
    self.intfunc(msg.sender, y)
    

#error bubbling up - when a function calls another and it throws an error
@external
def set_x_to():
    self.intfunc(msg.sender, 'Foo')
    self.x = 'Bar'