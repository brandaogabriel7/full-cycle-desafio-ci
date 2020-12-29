package main

import "testing"

// Test soma function
func TestSoma(t *testing.T) {
	numero1 := 1
	numero2 := 2
	resultadoEsperado := 3

	soma := soma(numero1, numero2)

	if soma != resultadoEsperado {
		t.Errorf("soma deveria ser %d, mas é %d", resultadoEsperado, soma)
	}
}
