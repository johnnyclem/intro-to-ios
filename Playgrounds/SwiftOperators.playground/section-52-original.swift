
let shiftBits: UInt8 = 4   // 00000100 in binary
shiftBits << 1             // 00001000
shiftBits << 2             // 00010000
shiftBits << 5             // 10000000
shiftBits << 6             // 00000000
shiftBits >> 2             // 00000001

let shiftBitsSigned: Int8 = -4   // 11111100 in binary
shiftBitsSigned << 1             // Negative sign is retained
shiftBitsSigned << 2
shiftBitsSigned << 5
shiftBitsSigned << 6
shiftBitsSigned >> 2             // negative sign is still retained


let color: UInt32 = 0xCC6699
let redComponent = (color & 0xFF0000) >> 16    // redComponent is 0xCC, or 204
let greenComponent = (color & 0x00FF00) >> 8   // greenComponent is 0x66, or 102
let blueComponent = color & 0x0000FF           // blueComponent is 0x99, or 153

