
var willOverflow = UInt8.max
willOverflow = willOverflow &+ 1 // willOverflow is now equal to 0

var willUnderflow = UInt8.min
willUnderflow = willUnderflow &- 1 // willUnderflow is now equal to 255
