class Node {
  int value;
  Node? left;
  Node? right;

  Node(this.value) {
    left = null;
    right = null;
  }
}

class BST {
  Node? root;

  bool isEmpty() {
    return root == null;
  }

  void insert(int value) {
    Node node = Node(value);
    if (isEmpty()) {
      root = node;
    } else {
      insertNode(root, node);
    }
  }

  void insertNode(Node? root, Node node) {
    if (root!.value < node.value) {
      if (root.left == null) {
        root.left = node;
      } else {
        insertNode(root.left, node);
      }
    } else {
      if (root.right == null) {
        root.right = node;
      } else {
        insertNode(root.right, node);
      }
    }
  }

  bool search(Node? root, int value) {
    if (root == null) {
      return false;
    } else {
      if (root.value == value) {
        return true;
      } else if (value < root.value) {
        return search(root.left, value);
      } else {
        return search(root.right, value);
      }
    }
  }

  void preOrder(Node? root) {
    if (root != null) {
      print(root.value);
      preOrder(root.left);
      preOrder(root.right);
    }
  }

  void inOrder(Node? root) {
    if (root != null) {
      inOrder(root.left);
      print(root.value);
      inOrder(root.right);
    }
  }

  void postOrder(Node? root) {
    if (root != null) {
      postOrder(root.left);
      postOrder(root.right);
      print(root.value);
    }
  }

  void levelOrder(Node? root) {
    List<Node?> queue = [];
    queue.add(root);
    while (queue.isNotEmpty) {
      Node? curr = queue.removeAt(0);
      print(curr!.value);
      if (curr.left != null) {
        queue.add(curr.left);
      }
      if (curr.right != null) {
        queue.add(curr.right);
      }
    }
  }

  int min(Node? root) {
    if (root!.left == null) {
      return root.value;
    } else {
      return min(root.left);
    }
  }

  int max(Node? root) {
    if (root!.right == null) {
      return root.value;
    } else {
      return max(root.right);
    }
  }

  Node? delete(int value) {
    return deleteNode(root, value);
  }

  Node? deleteNode(Node? root, int value) {
    if (root == null) {
      return root;
    } else {
      if (value < root.value) {
        root.left = deleteNode(root.left, value);
      } else if (value > root.value) {
        root.right = deleteNode(root.right, value);
      } else {
        if (root.left == null && root.right == null) {
          return null;
        }
        if (root.left == null) {
          return root.right;
        } else if (root.right == null) {
          return root.left;
        }
        root.value = min(root.right);
        root.right = deleteNode(root.right, root.value);
      }
      return root;
    }
  }

  bool bstValidation() {
    return isValid(root, double.negativeInfinity, double.infinity);
  }

  bool isValid(Node? node, double min, double max) {
    if (node == null) {
      return true;
    }
    if (node.value < min || node.value > max) {
      return false;
    }
    return isValid(node.left, min, node.value as double) &&
        isValid(node.right, node.value as double, max);
  }

  int closest(int value) {
    return findClosest(root, value, double.infinity).toInt();
  }

  double findClosest(Node? node, int target, double closest) {
    if (node == null) {
      return closest;
    }
    if ((node.value - target).abs() < (closest - target).abs()) {
      closest = node.value.toDouble();
    }
    if (target < node.value) {
      return findClosest(node.left, target, closest);
    } else if (target > node.value) {
      return findClosest(node.right, target, closest);
    } else {
      return closest;
    }
  }
}

void main() {
  BST bst = BST();
  bst.insert(10);
  bst.insert(2);
  bst.insert(8);
  bst.insert(40);
  bst.insert(12);

  print('SEARCH:');
  print(bst.search(bst.root, 11));

  print('PREORDER:');
  bst.preOrder(bst.root);

  print('INORDER:');
  bst.inOrder(bst.root);

  print('POSTORDER:');
  bst.postOrder(bst.root);

  print('LEVELORDER:');
  bst.levelOrder(bst.root);

  // print('MIN:');
  // print(bst.min(bst.root));

  // print('MAX:');
  // print(bst.max(bst.root));

  // print('SEARCH:');
  // print(bst.search);
}
