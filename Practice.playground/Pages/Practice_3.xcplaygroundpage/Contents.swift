//: [Previous](@previous)

import Foundation

var n  = 0

func increment() -> Int
{
    n += 1
    return n
}
func increment(_ num:Int) -> Int
{
    n += num
    return n
}



var marks = 60
var add = marks+increment(20)

print(add)
