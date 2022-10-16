package main

func main() {
	stack := NewStack[int]()
	stack.Push(1)
	stack.Push(2)
	stack.Push(3)
	stack.Push(4)
	stack.Push(5)
	for stack.IsNotEmpty() {
		println(stack.Pop())
	}
}

// / Output:
// 5
// 4
// 3
// 2
// 1
