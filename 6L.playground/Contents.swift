import UIKit

/*1. Реализовать свой тип коллекции «очередь» (queue) c использованием дженериков.
 2. Добавить ему несколько методов высшего порядка, полезных для этой коллекции (пример: filter для массивов)
 3. * Добавить свой subscript, который будет возвращать nil в случае обращения к несуществующему индексу.*/

//1. Реализовать свой тип коллекции «очередь» (queue) c использованием дженериков.//
struct queue <T: Comparable> {
    
    var numbers = [T]()
//2. Добавить ему несколько методов высшего порядка, полезных для этой коллекции (пример: filter для массивов)//
    
    mutating func add( _ number: T){
        numbers.append(number)
    }
        
    func filter(number: T){
        print("Найти \(numbers.filter{$0 == number})")
    }
    

//3. * Добавить свой subscript, который будет возвращать nil в случае обращения к несуществующему индексу.//
    
    subscript (index: Int) -> String? {
        return (index < numbers.count ? numbers[index] : nil) as? String
    }
    
    func printed(){
        print(numbers.count)
    }

}

var calculator = queue<String>(numbers: ["Price"])
calculator.add("1")
calculator.add("Check")
calculator.add("4")
print(calculator)

calculator.filter(number: "4")
calculator.printed()
