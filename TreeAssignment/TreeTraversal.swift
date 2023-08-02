//
//  TreeTraversal.swift
//  Swift-AGDS
//
//  Created by Derrick Park on 2023-07-31.
//

import Foundation


func preorder(_ node: Int, _ tree: inout [[Int]]) {
  // visit
  print(node)
  // left
  preorder(tree[node][0], &tree)
  // right
  preorder(tree[node][1], &tree)
}

func inorder(_ node: Int, _ tree: inout [[Int]]) {
  // left
  inorder(tree[node][0], &tree)
  // visit
  print(node)
  // right
  inorder(tree[node][1], &tree)
}

func postorder(_ node: Int, _ tree: inout [[Int]]) {
  // left
  postorder(tree[node][0], &tree)
  // right
  postorder(tree[node][1], &tree)
  // visit
  print(node)
}

func treeTraversal() {
  let n: Int = 20
  var tree = [[Int]](repeating: [Int](repeating: 0, count: 2), count: n)
  
  
}
