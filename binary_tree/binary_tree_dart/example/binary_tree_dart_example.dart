import 'package:binary_tree_dart/binary_tree_dart.dart';

void main() {
  final tree = buildExampleTree();
  if (tree.contains(5)) {
    print("Found 5!");
  } else {
    print("Couldn't find 5");
  }
}

// void main() {
//   final tree = createBinaryTree();
//   print(tree);
// }

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

BinarySearchTree<int> buildExampleTree() {
  var tree = BinarySearchTree<int>();
  tree.insert(3);
  tree.insert(1);
  tree.insert(4);
  tree.insert(0);
  tree.insert(2);
  tree.insert(5);
  return tree;
}
