# @version ^0.2.16

#events - used to send notification to user interface and used a s cheap storage

event Transfer:
    sender: address
    receiver: address
    value: uint256

event Authorized:
    addr: indexed(address)
    authorized: bool

x: public(String[20])

@external
def __init__():
    self.x = 'yuck'

@external
def transer(to: address, amount: uint256):
    log Transfer(msg.sender, to, amount)

# events as cheap storage
@external
def grantAuthorization(addr: address):
    assert self.authorized[msg.sender], "!authorized"
    self.authorized[addr] = True
    log Authorized(addr, True)

@external
def revokeuthorization(addr: address):
    assert self.authorized[msg.sender], "!authorized"
    self.authorized[addr] = False
    log Authorized(addr, False)