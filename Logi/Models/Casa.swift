//
//  Inmueble.swift
//  Logi
//
//  Created by Manuel on 19/03/20.
//  Copyright © 2020 Manuel. All rights reserved.
//

import UIKit

struct Casa {
    var ubicacion: String
    var nombre: String
    var capacidad: Int
    var precio: Float
    var descripcion: String
    var imagenes: [UIImage] = []
    var dueno: Usuario
}

