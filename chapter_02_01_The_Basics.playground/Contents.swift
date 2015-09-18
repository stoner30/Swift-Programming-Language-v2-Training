//: # 基础部分
// 可选绑定
// 多值的可选绑定
let param1: Int? = 1
let param2: Int? = 2
// let param2: Int? = nil

if let p1 = param1, p2 = param2 {
    print("Sum is \(p1 + p2)")
} else {
    print("Error: one or both of params is nil.")
}
