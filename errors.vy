# @version ^0.2.16

x: public(String[100])
owner: public(address)

@external
def __init__():
    self.owner = msg.sender

@internal
def _setX(sender: address, _x: String[10]):
    if self.owner != sender:
        raise "! Owner"    
    self.x = _x

@external
def setX(_x: String[10]):
    self._setX(msg.sender, _x) 

@external
def setXtoMajid():
    self._setX(msg.sender, 'Majid')
    self.x = 'Majid'

#unreachable -> uses all of gas
@external
def unreachable():
    raise UNREACHABLE