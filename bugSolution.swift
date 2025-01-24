func calculateArea(width: Int, height: Int) -> Int {
    return width * height
}

let area = calculateArea(width: 10, height: 5) 
print(area) // Output: 50

func calculateAreaWithStrings(width: String, height: String) -> Int? {
    guard let widthInt = Int(width), let heightInt = Int(height) else {
        return nil // Handle potential conversion errors
    }
    return widthInt * heightInt
}

let area2 = calculateAreaWithStrings(width: "10", height: "5")
if let safeArea2 = area2 {
    print(safeArea2) // Output: 50
} else {
    print("Conversion failed")
}

//Alternative approach using error handling
func calculateAreaWithErrorHandling(width: String, height: String) throws -> Int {
    guard let widthInt = Int(width), let heightInt = Int(height) else {
        throw NSError(domain: "CalculationError", code: 1, userInfo: nil)
    }
    return widthInt * heightInt
}

door{
    do{
        let result = try calculateAreaWithErrorHandling(width: "10", height: "5")
        print(result) //Output: 50
    }catch{
        print("Error during calculation")
    }
}