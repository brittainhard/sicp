package main

import "fmt"

var precision float64 = 0.001

func abs(x float64) float64 {
        if (x < 0) {
                return -x
        } else {
                return x
        }
}

func cube(x float64) float64 {
        return x * x * x
}

func square(x float64) float64 {
        return x * x
}

func improve(guess, x float64) float64 {
        return ((x / square(guess) + (2 * guess)) / 3)
}

func is_precise(guess, previous float64) bool {
        return abs(guess - previous) < precision
}

func root_iter(guess, previous, x float64) float64 {
        if is_precise(guess, previous) {
                return guess
        } else {
                return root_iter(improve(guess, x), guess, x)
        }
}

func cubert(x float64) float64 {
        return root_iter(1.0, 0.0, x)
}

func main() {
        a := cubert(9)
        fmt.Println(a)
        fmt.Println(cube(a))
}
