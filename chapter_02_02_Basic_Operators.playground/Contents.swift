//: # 基本运算符
// 浮点数可以进行取模运算，但是浮点数依然会出现精度丢失的问题，就像javascript一样
print(7.6 % 2.5)  // 理论上应该打印出0.1才对，但是结果显示为0.0999999999999996


// 空合运算符
// 形如：a??b
// 以上形式是a != nil ? a! : b的简写
let defaultColor = "Light Gray"
var userDefinedColor: String? = "Red"
// userDefinedColor: String? = nil
var color = userDefinedColor ?? defaultColor
print("The color is \(color).")