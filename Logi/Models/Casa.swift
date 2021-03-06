//
//  Inmueble.swift
//  Logi
//
//  Created by Manuel on 19/03/20.
//  Copyright © 2020 Manuel. All rights reserved.
//

import UIKit

struct Casa: Identifiable, Hashable {
    var id = UUID()
    var firebaseID: String
    var tipo: String
    var ubicacion: String
    var nombre: String
    var capacidad: String
    var precio: Int
    var descripcion1: String
    var descripcion2: String
    var descripcion3: String
    var imagen: String
    var isFav: Bool = false
    
    init(id: String, dictionary: [String: Any]){
        self.firebaseID = id
        self.tipo = dictionary["tipo"] as? String ?? "casa"
        self.ubicacion = dictionary["ubicacion"] as? String ?? "MX"
        self.nombre = dictionary["nombre"] as? String ?? "Casa Lola"
        self.capacidad = dictionary["capacidad"] as? String ?? "1 - 2 personas"
        self.precio = dictionary["precio"] as? Int ?? 3000
        self.descripcion1 = dictionary["descripcion1"] as? String ?? "No hay descripción"
        self.descripcion2 = dictionary["descripcion2"] as? String ?? "No hay descripción"
        self.descripcion3 = dictionary["descripcion3"] as? String ?? "No hay descripción"
        self.imagen = dictionary["imagen"] as? String ?? "casaCa1"
    }
    
    init(){
        self.firebaseID = ""
        self.tipo = ""
        self.ubicacion = ""
        self.nombre = ""
        self.capacidad = ""
        self.precio = -1
        self.descripcion1 = ""
        self.descripcion2 = ""
        self.descripcion3 = ""
        self.imagen = "casaSm1"
    }
}

