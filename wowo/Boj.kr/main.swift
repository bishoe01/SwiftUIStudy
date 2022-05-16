import Foundation

var numInput = readLine()!.split(separator: " ")
var A = Int(numInput[0])!
var B = Int(numInput[1])!
var C = Int(numInput[2])!

print((A + B) % C)
print(((A%C) + (B%C))%C)
print((A*B)%C)
print(((A%C) * (B%C))%C)
