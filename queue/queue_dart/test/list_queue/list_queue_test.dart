import 'package:queue_dart/queue_dart.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
// setting a fucntion to prepare fore each test
  late ListQueue<int> queue;
  setUp(() {
    queue = ListQueue();
  });
  group(
    'List Queue',
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
