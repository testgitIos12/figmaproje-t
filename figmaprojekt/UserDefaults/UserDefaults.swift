//
//  UserDefaults.swift
//  figmaprojekt
//
//  Created by Samir Maksutov on 3/4/22.
//

import Foundation

class UserDefaultsService {
    static let shared = UserDefaultsService()
    
    
    var nameOne: String {
        get {
            return UserDefaults.standard.string(forKey: "nameOne_key") ?? ""
         }
            set{
                UserDefaults.standard.set(newValue, forKey: "nameOne_key")
                UserDefaults.standard.synchronize()
            }
    }
    
    var nameTwo: String {
        get {
            return UserDefaults.standard.string(forKey: "nameTwo_key") ?? ""
         }
            set{
                UserDefaults.standard.set(newValue, forKey: "nameTwo_key")
                UserDefaults.standard.synchronize()
            }
    }
    
}
