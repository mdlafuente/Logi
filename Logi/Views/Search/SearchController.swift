//
//  SearchController.swift
//  Logi
//
//  Created by Manuel on 10/04/20.
//  Copyright © 2020 Manuel. All rights reserved.
//

import SwiftUI
import Firebase

class SearchController: ObservableObject{
    @Published var propiedades = [Casa]()
    
    init(){
        fetchAll()
    }
    func fetchAll() {
        let db = Firestore.firestore()
        
        db.collection("propiedades").getDocuments() { (querySnapshot, err) in
            if let err = err {
                print("Error getting documents: \(err)")
            } else {
                for document in querySnapshot!.documents {
                    let casa = Casa(id: document.documentID, dictionary: document.data())
                    self.propiedades.append(casa)
                }
            }
        }
    }
}
