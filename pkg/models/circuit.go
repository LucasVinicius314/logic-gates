package models

type Circuit struct {
	Inputs  []*Input
	Outputs []*Output
}

func (c *Circuit) AddInput(input *Input) {
	c.Inputs = append(c.Inputs, input)
}

func (c *Circuit) AddOutput(output *Output) {
	c.Outputs = append(c.Outputs, output)
}

func (c *Circuit) Evaluate() bool {
	return c.Inputs[0].Evaluate()
}
