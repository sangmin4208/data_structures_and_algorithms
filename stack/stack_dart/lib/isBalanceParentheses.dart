part of 'stack_dart.dart';

bool isBalanceParentheses(String input) {
  final stack = Stack<String>();
  for (var i = 0; i < input.length; i++) {
    final char = input[i];
    if (char == '(' || char == '[' || char == '{') {
      stack.push(char);
    } else if (char == ')' || char == ']' || char == '}') {
      if (stack.isEmpty) {
        return false;
      }
      final top = stack.pop();
      if (top == '(' && char != ')') {
        return false;
      }
      if (top == '[' && char != ']') {
        return false;
      }
      if (top == '{' && char != '}') {
        return false;
      }
    }
  }
  return stack.isEmpty;
}
