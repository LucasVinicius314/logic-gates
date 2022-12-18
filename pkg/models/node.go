package models

type Node struct {
	Previous *Node
	Next     []*Node
}

func (n *Node) AddNext(next *Node) {
	n.Next = append(n.Next, next)
}

func (n *Node) Evaluate() bool {
	return false
}

func (n *Node) Forward() {}
