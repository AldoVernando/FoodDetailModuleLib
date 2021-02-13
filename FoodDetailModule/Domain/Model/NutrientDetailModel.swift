//
//  NutrientDetailModel.swift
//  FoodDetailModule
//
//  Created by aldo vernando on 13/02/21.
//

import Foundation

class NutrientDetailModel {
    var label: String
    var quantity: Double
    var unit: String

    init(_ entity: NutrientDetailResponse?) {
        self.label = entity?.label ?? ""
        self.quantity = entity?.quantity ?? 0
        self.unit = entity?.unit ?? ""
    }
}
