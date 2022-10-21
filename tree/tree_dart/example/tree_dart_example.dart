import 'dart:collection';

import 'package:tree_dart/tree_dart.dart';

void main() {
  final tree = makeBeverageTree();

  printLevel(tree);
}

TreeNode<String> makeBeverageTree() {
  final tree = TreeNode('beverages');
  final hot = TreeNode('hot');
  final cold = TreeNode('cold');
  final tea = TreeNode('tea');
  final coffee = TreeNode('coffee');
  final chocolate = TreeNode('cocoa');
  final blackTea = TreeNode('black');
  final greenTea = TreeNode('green');
  final chaiTea = TreeNode('chai');
  final soda = TreeNode('soda');
  final milk = TreeNode('milk');
  final gingerAle = TreeNode('ginger ale');
  final bitterLemon = TreeNode('bitter lemon');

  tree.add(hot);
  tree.add(cold);

  hot.add(tea);
  hot.add(coffee);
  hot.add(chocolate);

  cold.add(soda);
  cold.add(milk);

  tea.add(blackTea);
  tea.add(greenTea);
  tea.add(chaiTea);

  soda.add(gingerAle);
  soda.add(bitterLemon);

  return tree;
}

// print each level
void printLevel<T>(TreeNode<T> tree) {
  final result = StringBuffer();
  // 1
  var queue = Queue<TreeNode<T>>();
  var nodesLeftInCurrentLevel = 0;
  queue.add(tree);
  // 2
  while (queue.isNotEmpty) {
    // 3
    nodesLeftInCurrentLevel = queue.length;
    // 4
    while (nodesLeftInCurrentLevel > 0) {
      final node = queue.removeFirst();
      if (node == null) break;
      result.write('${node.value} ');
      for (var element in node.children) {
        queue.add(element);
      }
      nodesLeftInCurrentLevel -= 1;
    }
    // 5
    result.write('\n');
  }
  print(result);
}
