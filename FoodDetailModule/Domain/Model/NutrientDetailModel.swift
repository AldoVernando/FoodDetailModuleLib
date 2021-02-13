//
//  NutrientDetailModel.swift
//  FoodDetailModule
//
//  Created by aldo vernando on 13/02/21.
//

import Foundation

public class NutrientDetailModel {
    public var label: String
    public  var quantity: Double
    public var unit: String

    public init(_ entity: NutrientDetailResponse?) {
        self.label = entity?.label ?? ""
        self.quantity = entity?.quantity ?? 0
        self.unit = entity?.unit ?? ""
    }
}
