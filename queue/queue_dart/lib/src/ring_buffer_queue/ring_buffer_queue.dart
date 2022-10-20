import 'package:queue_dart/src/ring_buffer/ring_buffer.dart';
import 'package:queue_dart/src/queue.dart';

class RingBufferQueue<E> implements Queue<E> {
  RingBufferQueue(int length) : _buffer = RingBuffer<E>(length);
  final RingBuffer<E> _buffer;
  @override
  E? dequeue() {
    return _buffer.read();
  }

  @override
  bool enqueue(E element) {
    try {
      _buffer.write(element);
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  bool get isEmpty => _buffer.isEmpty;

  @override
  E? get peek => _buffer.peek;

  @override
  String toString() {
    return _buffer.toString();
  }
}
