//: [Previous](@previous)

import Foundation


let name = ["Daniyal","Moin","Mubeen","Tabish","Shoaib","Ali","Yosha","Tehreem","Madiha"]

func backward(_ str1:String, _ str2:String) -> Bool
{
    return str1 < str2
}


var ans = name.sorted(by: >)
print(ans)
