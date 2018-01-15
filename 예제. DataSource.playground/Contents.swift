import UIKit

/*
 데이터소스(DataSource)
 
 데이터소스는 데이터에 대한 정보를 제공해주는 역할을 한다.
 
 다음 프로토콜에 정의된 데이터소스 규칙을 만족하고 테스트를 모두 통과하도록 코드를 작성하시오.
 
 */


protocol DataSource {
    var numberOfItem: Int { get }
    func item(at index:Int) -> String
    
    func addItem(_ item: String)
    func removeItem(at index:Int) -> String
}


class MyDataSource : DataSource {
    var data:[String] = []
    // [String]은 string의 배열
    var numberOfItem: Int {
        return data.count
        // 배열일 땐 배열원소의 숫자, 문자일땐 문자개수
    }
    
    func item(at index: Int) -> String {
        return data[index]
        // index 내부 파라미터, at 외부 파라미터
    }
    func addItem(_ item: String) {
        data.append(item)
    }
    func removeItem(at index: Int) -> String {
        return data.remove(at: index)
        // 배열은 삭제된 것을 알려주는 기능이 포함되어 있음
    }
}


let dataSupplier = MyDataSource()

let result1 = dataSupplier.numberOfItem
assert(result1 == 0, "Test1 Fail \(result1)")

dataSupplier.addItem("Apple")
dataSupplier.addItem("Banana")

let result2 = dataSupplier.numberOfItem
assert(result2 == 2, "Test2 Fail \(result2)")

dataSupplier.addItem("Cherry")

let result3 = dataSupplier.item(at: 0)
assert(result3 == "Apple", "Test3 Fail \(result3)")

let result4 = dataSupplier.removeItem(at: 1)
assert(result4 == "Banana", "Test4 Fail \(result4)")

let result5 = dataSupplier.numberOfItem
assert(result5 == 2, "Test5 Fail \(result5)")

print("Well Done")

