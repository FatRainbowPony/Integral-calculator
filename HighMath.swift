import Foundation
import MathParser

public class HighMath
{
    public init(){}
    
    ///вычисляет интеграл методом левых прямоугольников, где
    ///f - функция (String);
    ///a, b - пределы интегрирования (Double);
    ///n - количество точек (Int)
    public static func IntegralByLeftRect(f: String, a: Double, b: Double, n: Int) -> Double
    {
        let h = (b - a)/Double(n);
        
        var i: Int = 0;
        var valueFunc: Double = 0;
        var s: Double = 0;
        
        while (i <= n - 1)
        {
            valueFunc = try! f.evaluate(["x": a + Double(i) * h]);
            
            s += h * valueFunc;
            
            i += 1;
        }
        
        return s;
    }
    
    ///вычисляет интеграл методом правых прямоугольников, где
    ///f - функция (String);
    ///a, b - пределы интегрирования (Double);
    ///n - количество точек (Int)
    public static func IntegralByRigthRect(f: String, a: Double, b: Double, n: Int) -> Double
    {
        let h = (b - a)/Double(n);
        
        var i: Int = 1;
        var valueFunc: Double = 0;
        var s: Double = 0;
        
        while (i <= n)
        {
            valueFunc = try! f.evaluate(["x": a + Double(i) * h]);
            
            s += h * valueFunc;
            
            i += 1;
        }
        
        return s;
    }
    
    ///вычисляет интеграл методом трапеции, где
    ///f - функция (String);
    ///a, b - пределы интегрирования (Double);
    ///n - количество точек (Int)
    public static func IntegralByTrapeze(f: String, a: Double, b: Double, n: Int) -> Double
    {
        let h = (b - a)/Double(n);
        
        var i: Int = 1;
        var valueFunc: Double = 0;
        var s: Double = try! f.evaluate(["x": a]) + f.evaluate(["x": b]);
        
        while (i <= n - 1)
        {
            valueFunc = try! f.evaluate(["x": a + Double(i) * h]);
            
            s += 2 * valueFunc;
            
            i += 1;
        }
        
        s *= h / 2;
        
        return s;
    }
}
