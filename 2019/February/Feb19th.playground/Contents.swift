import Foundation
/*
 Given an array of integers, return a new array such that each element at index i of the new array is the product of all the numbers in the original array except the one at i.
 
 For example, if our input was [1, 2, 3, 4, 5], the expected output would be [120, 60, 40, 30, 24]. If our input was [3, 2, 1], the expected output would be [2, 3, 6].
 
 Follow-up: what if you can't use division?
 */


func exclusiveElementProduct(argArray: [Int]) -> [Int] {
    
    ///This function will return the product of elements from any given array.
func productElements(array: [Int]) -> Int {
    var count = 0
    var product = 1
    let countCeiling = array.count
    while count < countCeiling {
        product *= array[count]
        count += 1
    }
    return product
}
    //We can only run the function if and only if there is more than 1 element in the array - otherwise this operation makes no sense.
    if argArray.count == 1 {
        print("There is no way to apply this function to an array with only 1 element - please add at least one more element to argArray. Defaulting to [0].")
        return [0]
    } else {
        
        //create a variable Array equal to the argument array so that I can pull a value out and put it back in after we get a product.
        var variableArray = argArray
        
        //This array will contain the final product elements.
        var productArray : [Int] = []
        
        //This array will contian the elements I want to exclude from the product.
        var excludedElementArray : [Int] = []
        
        //These will help to count through the argument array.
        let argArrayCountCeiling = argArray.count
        var argArrayCount = 0
    
        //Loop through index values from 0 to argArray.count - 1
            while argArrayCount < argArrayCountCeiling {
                
                //Create an excluded element (starting with the element at index 0), and append that value to the beginning of excluded Element Array.
                let excludedElement = variableArray.remove(at: argArrayCount)
                excludedElementArray.insert(excludedElement, at: 0)
                
                //Once an element is excluded we can call the productElements function on the variableArray and get the product of the elements and append it to the product array.
                let p = productElements(array: variableArray)
                productArray.append(p)
                
                //Now that we have the product we want to reinsert the excluded value back into the variable array and get ready for the next loop.
                variableArray.insert(excludedElementArray[0], at: argArrayCount)
                argArrayCount += 1
        }
        
    return productArray
    }
}

exclusiveElementProduct(argArray: [1,2,3,4,5])
exclusiveElementProduct(argArray: [3,2,1])
exclusiveElementProduct(argArray: [0])
exclusiveElementProduct(argArray: [0,1,2])

//SEARCH COMPLEXITY IS O (n^2) -- The time it takes to run the function scales quadradically as n scales linearly.


func sameButWithDivision(argumentArray: [Int]) -> [Int] {
    
    //These will help with counting.
    var product = 1
    var indexCount = 0
    
    //This will contain the final product array.
    var productArray : [Int] = []
    
    //loop through all the elements in the array and multiply them.
    for element in argumentArray {
        product *= element
    }
    //Go through and grab each array value (starting with the element at index 0) and divide the total product, then append to the final product and do the same for each element in the array.
    while indexCount < argumentArray.count {
    let finalP = product / argumentArray[indexCount]
    productArray.append(finalP)
        indexCount += 1
    }
    return productArray
}

sameButWithDivision(argumentArray: [1,2,3,4,5])

