part 'isBalanceParentheses.dart';

class Stack<E> {
  Stack() : _storage = <E>[];
  Stack.of(Iterable<E> elements) : _storage = elements.toList();

  final List<E> _storage;

  void push(E value) => _storage.add(value);
  E pop() => _storage.removeLast();
  E peek() => _storage.last;
  bool get isEmpty => _storage.isEmpty;
  bool get isNotEmpty => _storage.isNotEmpty;
  int get length => _storage.length;
  void clear() => _storage.clear();
  @override
  String toString() {
    return '--- Top ---\n'
        '${_storage.reversed.join('\n')}'
        '\n------------';
  }
}
