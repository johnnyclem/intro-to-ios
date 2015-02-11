
let places = ["SFO", "LAS", "BOS"]
var count = places.count
var result = ""
for index in 0..count { // Runs from 0 to 2, not including 3.
    result += places[index]
}
result
