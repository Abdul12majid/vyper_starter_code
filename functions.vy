# @version ^0.2.16

num: public(uint256)
value: public(uint256)
owner: public(address)



@external
@payable
def __init__():
	self.num = 3
	self.owner = msg.sender
	self.value = msg.value

@external
@pure
def simple(x: uint256, b: bool, s: String[10]) -> (uint256, bool, String[100]):
	return(x + 1, not b, concat(s, "?"))

@external
@pure
def myfunc(y: String[20]) -> (bool):
	if y == 'yes':
		return y == 'yes'
	else:
		return False

@external
@view
def viewfunc(x: uint256) -> (uint256, address):
	return (x + self.num, msg.sender)

@external
@payable
def receiveEther():
	self.value = msg.value
	
@external
@pure
def if_else(s: String[30]) -> (uint256):
	if s == 'me':
		return 22
	else:
		return 0