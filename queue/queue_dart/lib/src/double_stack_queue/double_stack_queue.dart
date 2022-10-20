import 'package:queue_dart/src/queue.dart';

class DoubleStackQueue<E> implements Queue<E> {
  final _leftStack = <E>[];
  final _rightStack = <E>[];
  @override
  E? dequeue() {
    if (_leftStack.isEmpty) {
      if (_rightStack.isEmpty) {
        return null;
      }
      _leftStack.addAll(_rightStack.reversed);
      _rightStack.clear();
    }
    return _leftStack.removeLast();
  }

  @override
  bool enqueue(E element) {
    _rightStack.add(element);
    return true;
  }

  @override
  bool get isEmpty => _leftStack.isEmpty && _rightStack.isEmpty;

  @override
  E? get peek => _leftStack.isEmpty ? _rightStack.first : _leftStack.last;

  @override
  String toString() {
    return [..._leftStack.reversed, ..._rightStack].toString();
  }
}
