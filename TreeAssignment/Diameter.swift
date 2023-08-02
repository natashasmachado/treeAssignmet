//
//  Diameter.swift
//  TreeAssignment
//
//  Created by Natasha Machado on 2023-08-01.
//

import Foundation

func bfs(_ start: Int, _ tree: inout [[(Int, Int)]], _ visited: inout [Bool]) -> (Int, Int) {
  var queue = [(node: start, distance: 0)]
  visited[start] = true
  var farthestNode = (node: start, distance: 0)
  while !queue.isEmpty {
    let (currentNode, currentDistance) = queue.removeFirst()
    for (neighbor, edgeDistance) in tree[currentNode] {
      if !visited[neighbor] {
        let newDistance = currentDistance + edgeDistance
        queue.append((node: neighbor, distance: newDistance))
        visited[neighbor] = true
        
        if newDistance > farthestNode.distance {
          farthestNode = (node: neighbor, distance: newDistance)
        }
      }
    }
  }
  
  return farthestNode
}

func treeDiameter() {
  print("type your tree:")
  let firstLine = readLine()!.split(separator: " ")
  let V = Int(firstLine[0])!
  var tree = [[(Int, Int)]](repeating: [], count: V + 1)
  for _ in 0..<V {
    let edge = readLine()!.split(separator: " ").map { Int($0)! }
    let u = edge[0]
    var i = 1
    while edge[i] != -1 {
      let v = edge[i]
      let d = edge[i + 1]
      tree[u].append((v, d))
      tree[v].append((u, d))
      i += 2
    }
  }
  var visited = [Bool](repeating: false, count: V + 1)
  let (farthestFromNode, _) = bfs(1, &tree, &visited)
  visited = [Bool](repeating: false, count: V + 1)
  let (_, diameter) = bfs(farthestFromNode, &tree, &visited)
  print("The diameter is: \(diameter) " )
}
