# @version ^0.2.16


struct Person:
  name: String[100]
  age: uint256

nums: public(uint256[10])
myMap: public(HashMap[address, uint256])
person: public(Person)

@external
def __init__():
  self.nums[5] = 123
  self.myMap[msg.sender] = 456
  self.person.name = "Majid"

  # Modify the original state variable directly
  self.nums[0] = 999

  # No need to create a separate copy (arr)
  # p: Person = self.person  # Not necessary for state changes
  # p.name = "Abdul"
