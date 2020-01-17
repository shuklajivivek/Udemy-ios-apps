import UIKit

func calculateBMI(mass:Int,height:Int)
{
    let num = mass
    let den = height * height
    
    let bmi = Double(num/den)
    
    if bmi > 25
    {
        print("you are overweight")
    }
    else if bmi >= 18.5 && bmi < 25.0
    {
        print("you are normal weight")
    }
    else
    {
        print("you are under weight")
    }
}

