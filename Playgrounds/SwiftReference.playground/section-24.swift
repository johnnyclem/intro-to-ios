var optionalName: String?
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}
optionalName = "John Appleseed"
if let name = optionalName {
    greeting = "Hello, \(name)"
}
