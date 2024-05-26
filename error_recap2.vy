# @version ^0.2.16

myname: public(String[100])
owner: public(address)

@external
def __init__():
    self.owner = msg.sender

@internal
def insidefunction(sender: address, y: String[100]):
    #if self.owner !== sender:
     #   raise "Not owner, error !!"
    self.myname = y

@external
def call_function(y: String[100]):
    self.insidefunction(msg.sender, y)

@external
def set_name():
    #self.insidefunction(msg.sender, 'Yisa')
    self.myname = 'well'
    