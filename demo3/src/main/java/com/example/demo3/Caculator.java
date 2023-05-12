package com.example.demo3;

public class Caculator {
    public static double calculate(double first,double second,char operate){
        switch (operate){
            case '+':
                return first + second;
            case '-':
                return first - second;
            case '*':
                return first * second;
            case '/':
                if(second != 0){
                    return first / second;
                }
                else {
                    throw new RuntimeException("Can't Divide by Zero");
                }
            default:
                throw new RuntimeException("Invalid operation");
        }
    }
}
