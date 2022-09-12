import Foundation

class TaxesCalculator {
    
    static let shared = TaxesCalculator()
    var dolar: Double = 3.5
    var iof: Double = 6.38
    var stateTax: Double = 7.0
    var shoppingValue: Double = 0
    
    var shoppingValueInReal: Double {
        return shoppingValue * dolar
    }
    
    var stateTaxValue: Double {
        return shoppingValue * stateTax/100
    }
    
    var iofValue: Double {
        return (shoppingValue + stateTax) * iof/100
    }
    
    func calculate(usingcreditCard: Bool) -> Double {
        var finalValue = shoppingValue + stateTaxValue
        if usingcreditCard {
            finalValue += iofValue
        }
        return finalValue
    }
    
    private init() {
        
    }
    
}
