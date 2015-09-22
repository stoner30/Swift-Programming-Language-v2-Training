//: # 控制流

// switch支持区间条件
let score = 55
let level: String!
switch score {
case 0..<20:
    level = "E"
case 20..<40:
    level = "D"
case 40..<60:
    level = "C"
case 60..<80:
    level = "B"
case 80...100:
    level = "A"
default:
    level = "invalid"
}
print("Level is \(level).")

// switch元组匹配
//let response = (code: 404, message: "Not found")
//let response = (code: 200, message: "hello world")
//let response = (code: 500, message: "Server error")
let response = (code: 100, message: "Nothing")
switch response {
case (200, _):
    print("Successful")
case (400..<500, _):
    print(response.1)
case (500, let error):
    print("Error is \(error)")
case (200, "hello world"):
    print("Can not into this case.")
case let(code, message) where message.hasSuffix("ing"):
    print(message)
default:
    print("...")
}

// fallthrough贯通语句
// 虽然可以使用fallthrough语句达到贯通的效果，但是如果case可以在一个分支中匹配多个条件，那还有必要使用fallthrough吗？而且下面这个例子算恰当吗？
let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
    description += " a prime number, and also"
    fallthrough
default:
    description += " an integer."
}
print(description)

// guard语句
func checkGender(gender: String) {
    guard gender == "Male" else {
        print("Female")
        return
    }
    print("Male")
}
checkGender("Male")

// API检查
if #available(iOS 9, OSX 10.10, *) {
    print("Supported")
} else {
    print("Unsupported")
}

