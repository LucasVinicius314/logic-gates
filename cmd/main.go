package main

import (
	models "logic-gates/pkg/models"
)

func main() {
	circuit := &models.Circuit{}

	o0 := &models.Output{}

	i0 := &models.Input{
		State: true,
	}

	circuit.AddInput(i0)
	circuit.AddOutput(o0)

	res := circuit.Evaluate()

	print(res)
}
