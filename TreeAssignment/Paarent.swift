//
//  Paarent.swift
//  TreeAssignment
//
//  Created by Natasha Machado on 2023-08-01.
//

import Foundation


func parentN(_ node: Int, _ tree: inout [[Int]], _ parent: inout [Int]) {
  for child in tree[node] {
    if parent[child] == 0 {
      parent[child] = node
      parentN(child, &tree, &parent)
    }
  }
}

func treeTraversalA() {
  print("Type a number of nodes following by n lines:")
  let n: Int = 100000
  var tree = [[Int]](repeating: [], count: n + 1)
  let N = Int(readLine()!)!
  for _ in 1..<N {
    let edge = readLine()!.split(separator: " ").map { Int($0)! }
    tree[edge[0]].append(edge[1])
    tree[edge[1]].append(edge[0])
  }
  var parent = [Int](repeating: 0, count: n + 1)
  parentN(1, &tree, &parent)
  for i in 2...N {
    print("The parents are: \(parent[i]) " )
  }
}
