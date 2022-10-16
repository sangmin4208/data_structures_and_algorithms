package main

// / Stack interface with generics
type Stack[T any] interface {
	Push(T)
	Pop() T
	IsEmpty() bool
	Peek() T
	IsNotEmpty() bool
	Clear()
}

// / Stack implementation with generics
type StackImpl[T any] struct {
	elements []T
}

// / Pushes an element to the stack
func (s *StackImpl[T]) Push(element T) {
	s.elements = append(s.elements, element)
}

// / Pops an element from the stack
func (s *StackImpl[T]) Pop() T {
	temp := s.elements[len(s.elements)-1]
	s.elements = s.elements[:len(s.elements)-1]
	return temp
}

// / Checks if the stack is empty
func (s *StackImpl[T]) IsEmpty() bool {
	return len(s.elements) == 0
}

// / Checks if the stack is not empty
func (s *StackImpl[T]) IsNotEmpty() bool {
	return len(s.elements) > 0
}

// / Peeks the top element of the stack
func (s *StackImpl[T]) Peek() T {
	return s.elements[len(s.elements)-1]
}

// / Clears the stack
func (s *StackImpl[T]) Clear() {
	s.elements = nil
}

// / Creates a new stack
func NewStack[T any]() Stack[T] {
	return &StackImpl[T]{}
}
