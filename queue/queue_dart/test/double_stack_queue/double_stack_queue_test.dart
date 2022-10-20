// Test for Linked List Queue

import 'package:queue_dart/src/double_stack_queue/double_stack_queue.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
// setting a fucntion to prepare fore each test
  late DoubleStackQueue<int> queue;
  setUp(() {
    queue = DoubleStackQueue();
  });
  group(
    'Double Stack Queue',
    () {
      test(
        "enqueue",
        () {
          queue.enqueue(1);
          queue.enqueue(2);
          queue.enqueue(3);
          queue.enqueue(4);
          expect(queue.toString(), [1, 2, 3, 4].toString());
        },
      );

      test("isEmpty", () {
        expect(queue.isEmpty, true);
        queue.enqueue(1);
        expect(queue.isEmpty, false);
      });
      test(
        "dequeue",
        () {
          queue.enqueue(1);
          queue.enqueue(2);
          queue.enqueue(3);
          queue.enqueue(4);
          expect(queue.dequeue(), 1);
          expect(queue.dequeue(), 2);
          expect(queue.dequeue(), 3);
          expect(queue.dequeue(), 4);
          expect(queue.dequeue(), null);
        },
      );
      test(
        "peek",
        () {
          queue.enqueue(1);
          queue.enqueue(2);
          queue.enqueue(3);
          queue.enqueue(4);
          expect(queue.peek, 1);
          queue.dequeue();
          expect(queue.peek, 2);
          queue.dequeue();
          expect(queue.peek, 3);
          queue.dequeue();
          expect(queue.peek, 4);
          queue.dequeue();
          expect(queue.peek, null);
        },
      );
    },
  );
}
