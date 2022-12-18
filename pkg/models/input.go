package models

type Input struct {
	Node
	State bool
}

func (i *Input) Evaluate() bool {
	return i.State
}
