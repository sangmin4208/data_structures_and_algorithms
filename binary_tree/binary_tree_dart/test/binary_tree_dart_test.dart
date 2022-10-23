import 'package:binary_tree_dart/binary_tree_dart.dart';
import 'package:test/test.dart';

void main() {
  group('Binary Tree', () {
    late BinaryNode<int> tree;
    setUp(() {
      tree = createBinaryTree();
    });

    test('in-order traversal', () {
      List<int> arr = [];
      tree.traverseInOrder(
        (value) {
          arr.add(value);
        },
      );
      expect(arr, [0, 1, 5, 7, 8, 9]);
    });

    test('pre-order traversal', () {
      List<int> arr = [];
      tree.traversePreOrder(
        (value) {
          arr.add(value);
        },
      );
      expect(arr, [7, 1, 0, 5, 9, 8]);
    });

    test('post-order traversal', () {
      List<int> arr = [];
      tree.traversePostOrder(
        (value) {
          arr.add(value);
        },
      );
      expect(arr, [0, 5, 1, 8, 9, 7]);
    });
  });
}

BinaryNode<int> createBinaryTree() {
  final zero = BinaryNode(0);
  final one = BinaryNode(1);
  final five = BinaryNode(5);
  final seven = BinaryNode(7);
  final eight = BinaryNode(8);
  final nine = BinaryNode(9);

  seven.leftChild = one;
  one.leftChild = zero;
  one.rightChild = five;
  seven.rightChild = nine;
  nine.leftChild = eight;

  return seven;
}
