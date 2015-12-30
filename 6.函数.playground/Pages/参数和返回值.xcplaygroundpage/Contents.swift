//: 参数和返回值: Swift中的参数和返回值极其灵活，可以无参数无返回值，也可以是极其复杂的函数作为参数

//:  - 无参数 🌰返回一个“您好”
func 问候() ->String {
    return "您好"
}

print(问候())

//:  - 无返回值 🌰打印“您好”
func 问候2() {
    print("您好")
}
问候2()
//:  - 多返回值（元组返回值）🌰返回整形的最大值和最小值
func maxMin() -> (Int, Int) {
    return (Int.min, Int.max)
}

maxMin()

//:  - 参数名：外部（用于给外部调用者表意，可忽略）、内部
func add(第一个数 first :Int, 第二个数 second : Int) -> Int {
    return first + second
}

add(第一个数: 3, 第二个数: 5)

//:  - 参数默认值
func 加二(第一个数 first :Int = 2, 第二个数 second : Int) -> Int {
    return first + second
}

加二(第二个数: 5)
加二(第一个数: 3, 第二个数: 5)

//:  - 不定数参数：以...代替，跟数组相似.一个函数最多能有一个不定数参数，位置可以任意。
func 求和(数组: Int...) -> Int{
    var 结果 = 0
    for 数字 in 数组 {
        结果 += 数字
    }
    return 结果
}
求和(0)


//:  - In-out参数：参数被函数改变值
func 交换值(inout a:Int, inout b:Int) {
    let 临时值 = a
    a = b
    b = 临时值
}

var a = 8
var b = 1

交换值(&a, b: &b)

a
b


//: [函数类型](@next)
