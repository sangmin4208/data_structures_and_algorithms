import 'package:avl_tree_dart/avl_tree_dart.dart';

void main() {
  final tree = AvlTree<int>();
  for (var i = 0; i < 15; i++) {
    tree.insert(i);
  }
  tree.root?.traverseInOrder(print);
}
