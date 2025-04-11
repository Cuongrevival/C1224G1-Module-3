package com.example.mathlib;

public class QuadraticEquationSolver {
    private double a, b, c;

    public QuadraticEquationSolver(double a, double b, double c) {
        this.a = a;
        this.b = b;
        this.c = c;
    }

    public double getDiscriminant() {
        return b * b - 4 * a * c;
    }

    public boolean hasRealRoots() {
        return getDiscriminant() >= 0;
    }

    public double[] solve() {
        double d = getDiscriminant();

        if (a == 0) {
            throw new IllegalArgumentException("Hệ số a phải khác 0");
        }

        if (d > 0) {
            double root1 = (-b + Math.sqrt(d)) / (2 * a);
            double root2 = (-b - Math.sqrt(d)) / (2 * a);
            return new double[] { root1, root2 };
        } else if (d == 0) {
            double root = -b / (2 * a);
            return new double[] { root };
        } else {
            // No real roots
            return new double[0];
        }
    }
}
