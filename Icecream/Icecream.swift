//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    var favoriteFlavorsOfIceCream = [
        "Joe": "Peanut Butter and Chocolate",
        "Tim": "Natural Vanilla",
        "Sophie": "Mexican Chocolate",
        "Deniz": "Natural Vanilla",
        "Tom": "Mexican Chocolate",
        "Jim": "Natural Vanilla",
        "Susan": "Cookies 'N' Cream"
    ]
    
    
    
    
    // 2.
    func names(forFlavor flavor: String) -> [String] {
        var names: [String] = []
        
        for (person, favoriteFlavor) in favoriteFlavorsOfIceCream {
            if favoriteFlavor == flavor {
                names.append(person)
            }
        }
        
        return names
    }
    
    
    
    
    
    // 3.
    func count(forFlavor flavor: String) -> Int {
        var flavorCount = 0
        
        for (_, favoriteFlavor) in favoriteFlavorsOfIceCream {
            if favoriteFlavor == flavor {
                flavorCount += 1
            }
        }
        
        return flavorCount
    }
    
    
    
    
    
    
    // 4.
    func flavor(forPerson person: String) -> String? {
        var favoriteFlavor: String? = nil
        
        if let flavor = favoriteFlavorsOfIceCream[person] {
            favoriteFlavor = flavor
        }
        
        return favoriteFlavor
    }
    
    
    
    
    
    
    // 5.
    func replace(flavor: String, forPerson person: String) -> Bool {
        var returnValue = false
        
        if let currentFlavor = favoriteFlavorsOfIceCream[person] {
            if currentFlavor != flavor {
                favoriteFlavorsOfIceCream[person] = flavor
                returnValue = true
            }
        }
        
        return returnValue
    }
    
    
    
    
    
    
    // 6.
    func remove(person: String) -> Bool {
        var returnValue = false
        
        if let _ = favoriteFlavorsOfIceCream[person] {
            favoriteFlavorsOfIceCream.removeValue(forKey: person)
            returnValue = true
        }
        
        return returnValue
    }
    
    
    
    
    
    
    
    // 7.
    func numberOfAttendees() -> Int {
        return favoriteFlavorsOfIceCream.count
    }
    
    
    
    
    
    
    
    // 8.
    func add(person: String, withFlavor flavor: String) -> Bool {
        var returnValue = false
        
        if favoriteFlavorsOfIceCream.index(forKey: person) == nil {
            favoriteFlavorsOfIceCream[person] = flavor
            returnValue = true
        }
        
        return returnValue
    }
    
    
    
    
    
    
    
    
    // 9.
    func attendeeList() -> String {
        var list = ""
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        
        for name in allNames {
            if let flavor = favoriteFlavorsOfIceCream[name] {
                list.append("\(name) likes \(flavor)\n")
            }
        }
        
        list = list.trimmingCharacters(in: .whitespacesAndNewlines)
        
        return list
    }
    
    
    
    
    
    
    

}
