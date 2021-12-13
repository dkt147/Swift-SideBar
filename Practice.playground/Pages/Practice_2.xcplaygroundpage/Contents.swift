import UIKit


var task:[String] = []
//print("You have no task for today!")


func greetings()
{
    print("Welcome to my application")
}

func greetings(_ msg:String)
{
    print(msg)
}

func greetings(_ msg:String, _ by:String)
{
    print("\(msg) by \(by).")
}


func evennumber(_ num:Int){
    if num%2==0{
        print("Even")
    }
    else
    {
        print("odd")
    }
    
}


func calculate_pay(_ basic:Int?, _ commission:Int?)
{
    
    if basic != nil && commission != nil
    {
        let total = basic! + commission!
        print("Your total salary is: \(total)")
        
    }
    else if basic != nil{
        let total = basic!
        print("Your total salary is: \(total)")
    }
    else if commission != nil{
        let total = commission!
        print("Your total salary is: \(total)")
    }
    else{
        let total = 0
        print("Your total salary is: \(total)")
    }
    
    
}


//calculate_pay(10000,nil)

//greetings()
//greetings("Welcome to Hello world","Daniyal")

evennumber(2)
