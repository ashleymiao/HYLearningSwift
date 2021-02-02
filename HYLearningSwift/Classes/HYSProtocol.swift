import Foundation
import HandyJSON


class BasicTypes: HandyJSON {
    var int: Int = 2
    var doubleOptional: Double?
    var stringImplicitlyUnwrapped: String!

    required init() {}
}

public class HYSProtocol { //必须声明为public，工程外面才可以访问
    public var name: String?
    public init() {
        
    }
    
    public func hyTest() { //不声明默认是internal的，只在framework中可以使用
        let manager = HYOCManager()
        
        
        let teacher2 = HYTeacher2()
        teacher2.doSomething() //通过类的函数调度表访问函数
        teacher2.ownMethod()
        HYTeacher2.teach() //直接访问函数
        
        let pro:MYProtocol = HYTeacher2()
        pro.doSomething()
        pro.readBooks()
        
        
        HYTeacher.teach() //直接访问函数
        let teacher = HYTeacher()
        teacher.doSomething() //直接访问函数
        testShape()
    }
    
    func testShape() {
        let circle: Shape = Circle.init(10.0)
        let rectangle: Shape = Rectangle.init(10.0, 30.0)
        let shapes: [Shape] = [circle, rectangle]
        for shape in shapes {
            print(shape.area)
        }
    }
}

class Shape {
    var area: Double{
        get{
            return 0
        }
    }
}

class Circle: Shape {
    var radious: Double
    
    init(_ radious: Double) {
        self.radious = radious
    }
    
    override var area: Double {
        get {
            return radious * radious * 3.14
        }
    }
}

class Rectangle: Shape {
    var width, height: Double
    init(_ width: Double, _ height: Double) {
        self.width = width
        self.height = height
    }
    override var area: Double {
        get {
            return width * height
        }
    }
}


//协议基本用法
protocol MYProtocol {
    func doSomething() //接口方法
    static func teach() //因为类也有可能遵循协议，类的类方法需要static
   // func readBooks()
    
}
extension MYProtocol { //协议中的方法是直接调度
    func readBooks() {
        
    }
}

//结构体遵循协议
struct HYTeacher: MYProtocol { //遵循了协议才会生成协议调度表，然后在协议调度表中再调用结构体中的方法
    func doSomething() {
        
    }
    
    func ownMethod() {
        
    }
    //结构体静态方法如何调用
    static func teach() {
        
    }
    
    func readBooks() {
        
    }
}

//结构体遵循协议
class HYTeacher2: NSObject, MYProtocol {//遵循了协议才会生成协议调度表，然后在协议调度表中再通过函数调度表调度
    func doSomething() {
        
    }
    
    static func teach() {
        
    }
    
    func ownMethod() {
        
    }
    
    func readBooks() {
        
    }
}

protocol MYPropertyProtocol {
    var age: Int { get} //协议中属性必须是可读或者可写的
    //let name: String //协议中属性不能是不可以修改的
    
}



