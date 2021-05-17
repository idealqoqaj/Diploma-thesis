//
//  HomeModel.swift
//  Tema e Diplomes
//
//  Created by Ideal Cocaj on 30.3.21.
//

import Foundation

class HomeModel{
    var homeImage: String
    var homeItemsLeft: Int
    var homeTittle: String
  //  var subjectImage: String
 //   var subjectLabel: String
    var elementet:[HomeElement]
     
    
    init(homeImage: String, homeItemsLeft: Int, homeTittle: String, elementet: [HomeElement]){
        self.homeImage = homeImage
        self.homeItemsLeft = homeItemsLeft
        self.homeTittle = homeTittle
//        self.subjectImage = subjectImage
//        self.subjectLabel = subjectImage
        self.elementet = elementet
        
    }
}
