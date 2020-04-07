//
//  HomeController.swift
//  Logi
//
//  Created by Sandra Roman on 07/04/20.
//  Copyright © 2020 Manuel. All rights reserved.
//

import SwiftUI
import Firebase

class HomeController: ObservableObject {
    @Published var propiedades = [Casa]()
    @Published var adventures = [Casa]()
    @Published var apartments = [Casa]()
    
    init() {
        fetchAll()
    }
    
    func fetchAll() {
        let db = Firestore.firestore()
        
        db.collection("propiedades").getDocuments() { (querySnapshot, err) in
            if let err = err {
                print("Error getting documents: \(err)")
            } else {
                for document in querySnapshot!.documents {
                    self.addCasaToCorrespondingArray(casa: Casa(dictionary: document.data()))
                }
            }
        }
    }
    
    func addCasaToCorrespondingArray(casa: Casa) {
        if casa.tipo == "adventure" {
            adventures.append(casa)
        } else if casa.tipo == "apartment" {
            apartments.append(casa)
        } else {
            propiedades.append(casa)
        }
    }
}
