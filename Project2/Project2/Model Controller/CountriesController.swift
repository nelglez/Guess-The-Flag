//
//  CountriesController.swift
//  Project2
//
//  Created by Nelson Gonzalez on 2/28/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import Foundation
import GameplayKit

class CountriesController {
    
    
    private(set) var countries: [Country] = []
    
    init(){
        addCountries()
    }
    
    func addCountries() {
        
       let countriesArray = ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]
        
        let randomCountries = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: countriesArray) as! [String]
        
        for country in randomCountries {
           let country = Country(name: country)
            countries.append(country)
        } 
    }
    
    
}
