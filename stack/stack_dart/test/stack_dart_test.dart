import 'package:stack_dart/stack_dart.dart';
import 'package:test/test.dart';

void main() {
  group('stack', () {
    test('push', () {
      final stack = Stack<String>();
      stack.push('hello');
      stack.push('world');
      expect(stack.length, 2);
      expect(stack.peek(), 'world');
    });
    test('pop', () {
      final stack = Stack<String>();
      stack.push('hello');
      stack.push('world');
      expect(stack.pop(), 'world');
      expect(stack.length, 1);
      expect(stack.pop(), 'hello');
      expect(stack.length, 0);
    });
    test('isBalanceParentheses', () {
      expect(isBalanceParentheses('(hello)'), true);
      expect(isBalanceParentheses('()[]{}'), true);
      expect(isBalanceParentheses('(]'), false);
      expect(isBalanceParentheses('([)]'), false);
      expect(isBalanceParentheses('{[]}'), true);
    });
  });
}
