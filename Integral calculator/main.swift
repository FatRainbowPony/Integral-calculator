import Foundation
import MathParser

print("Введите функцию для интегрирования");
let function = readLine();

print("Введите нижний предел интегрирования");
let bottomStr = readLine();
let bottom: Double? = Double(bottomStr!);

print("Введите верхний предел интегрирования");
let topStr = readLine();
let top: Double? = Double(topStr!);

print("Введите количество точек");
let countStr = readLine();
let count: Int? = Int(countStr!);

let valueOfIntegralByLeftRect =
    Integral_calculator.HighMath.IntegralByLeftRect(f: function!, a: bottom!, b: top!, n: count!);
print("Значение интеграла функции " + function! + " при методе левых прямоугольников: " +
      String(valueOfIntegralByLeftRect));

let valueOfIntegralByRightRect =
    Integral_calculator.HighMath.IntegralByRigthRect(f: function!, a: bottom!, b: top!, n: count!);
print("Значение интеграла функции " + function! + " при методе правых прямоугольников: " +
      String(valueOfIntegralByRightRect));

let valueOfIntegralByTrapeze =
    Integral_calculator.HighMath.IntegralByTrapeze(f: function!, a: bottom!, b: top!, n: count!);
print("Значение интеграла функции " + function! + " при методе трапеции: " +
      String(valueOfIntegralByTrapeze));
