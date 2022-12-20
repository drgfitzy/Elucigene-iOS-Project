//
//  Product.swift
//  
//
//  Created by Duc Tran on 3/22/15.
//
//MODEL!!!!!!!!!

import Foundation
import UIKit

/*public enum ProductRating
{
    case Unrated
    case Average
    case OK
    case Good
    case Brilliant
}*/

// Represents a generic product. Need an image named "default"

class Product
{
    var title: String
    var description: String
    var detail: String
    var image: UIImage
    //var rating: ProductRating
    var literature: String
    var webpage: String
    var instructions: String
   
    
    init(titled: String, description: String, imageName: String, detail: String, literatureURL: String, webpageURL: String, instructionsURL: String)
    {
      self.title = titled
       self.description = description
        self.detail = detail
        self.literature = literatureURL
        self.webpage = webpageURL
        self.instructions = instructionsURL
        
       // if let mutList = UIImage(named: mutantListImage){
        
        //mutantList = mutList
        
       // } else{
        //mutantList = UIImage(named: "default")!
        
        //}
        
        if let img = UIImage(named: imageName) {
        image = img
       } else {
        image = UIImage(named: "default")!
       }
       
        
        //rating = .Unrated
    }
    }

