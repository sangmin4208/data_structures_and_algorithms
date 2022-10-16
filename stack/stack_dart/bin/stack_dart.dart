import 'package:stack_dart/stack_dart.dart';

void main(List<String> arguments) {
  print(isBalanceParentheses('(hello)'));
  print(isBalanceParentheses('()[]{}'));
  print(isBalanceParentheses('(]'));
  print(isBalanceParentheses('([)]'));
  print(isBalanceParentheses('{[]}'));
}
