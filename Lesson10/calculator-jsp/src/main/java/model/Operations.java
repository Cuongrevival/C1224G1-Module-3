package model;

public class Operations {
    public float calculator(float firstNumber, float secondNumber, String operation) {

        float result;
        switch (operation) {
            case "addition":
                result = firstNumber + secondNumber;
                break;
            case "subtraction":
                result = firstNumber - secondNumber;
                break;
            case "multiply":
                result = firstNumber * secondNumber;
                break;
            case "division":
                if (secondNumber == 0) {
                    throw new ArithmeticException("Division by zero");
                }
                result = firstNumber / secondNumber;
                break;
            default:
                throw new ArithmeticException("Invalid operation");
        }
        return result;
    }
}
