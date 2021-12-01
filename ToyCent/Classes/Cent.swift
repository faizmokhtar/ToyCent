
public struct Cent {
    public private(set) var value: Int
    
    public init(amountInCent: Int) {
        value = amountInCent
    }
    
    public init(amount: Int) {
        value = amount * 100
    }
    
    public init(amount: String?) {
        guard let amount = amount?.replacingOccurrences(of: ",", with: "") else {
            value = 0
            return
        }
        
        if let amount = Int(amount) {
            value = amount * 100
        } else if let amount = Double(amount),
                  !amount.isNaN {
            value = Int(round(amount * 100))
        } else {
            value = 0
        }
    }
    
    public init(amount: Double) {
        value = Int(round(amount * 100))
    }
}
