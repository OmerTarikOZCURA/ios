//
//  SuperMusicians.swift
//  MusicianClass
//
//  Created by Ömer Tarık Özcura on 2.01.2023.
//

import Foundation

class SuperMusicians : Musicians
{
    func sing2(){
        print("enter night")
    }
    
    override func sing() {
        print("override sing")
        super.sing()
        print("super.sing")
    }
}
