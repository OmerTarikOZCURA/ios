//
//  Musicians.swift
//  MusicianClass
//
//  Created by Ömer Tarık Özcura on 2.01.2023.
//

import Foundation

enum MusicianType{
    case LeadGuitar
    case Vocalist
    case Bassist
    case Violenist
}


class Musicians
{
    var name : String
    var age : Int
    var intrument : String
    var type : MusicianType
    
    init(name: String = "", age: Int = 0, intrument: String = "",musicianType:MusicianType) {
        self.name = name
        self.age = age
        self.intrument = intrument
        self.type = musicianType
        print("initial")
    }
    
    func sing(){
        print("nothing else matters")
    }
}
