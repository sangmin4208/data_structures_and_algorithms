import 'package:queue_dart/src/queue.dart';
import '../doubly_linked_list/doubly_linked_list.dart';

class LinkedListQueue<E> implements Queue<E> {
  final _list = DoublyLinkedList<E>();
  @override
  E? dequeue() {
    return _list.pop();
  }

  @override
  bool enqueue(element) {
    _list.append(element);
    return true;
  }

  @override
  bool get isEmpty => _list.isEmpty;

  @override
  get peek => _list.head?.value;

  @override
  String toString() {
    return _list.toString();
  }
}
