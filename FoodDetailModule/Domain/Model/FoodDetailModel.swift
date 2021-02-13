//
//  FoodDetailModel.swift
//  FoodDetailModule
//
//  Created by aldo vernando on 13/02/21.
//

import Foundation

public class FoodDetailModel {
    public var calories: Double
    public var weight: Double
    public var healthLabels: [String]
    public var totalNutrients: TotalNutrientsModel?
    
    public init(calories: Double, weight: Double, healthLabels: [String], totalNutrients: TotalNutrientsModel?) {
        self.calories = calories
        self.weight = weight
        self.healthLabels = healthLabels
        self.totalNutrients = totalNutrients
    }
}

public class TotalNutrientsModel {
    public var energy: NutrientDetailModel
    public var fat: NutrientDetailModel
    public var fasat: NutrientDetailModel
    public var fatrn: NutrientDetailModel
    public var fams: NutrientDetailModel
    public var fapu: NutrientDetailModel
    public var carbs: NutrientDetailModel
    public var fiber: NutrientDetailModel
    public var sugar: NutrientDetailModel
    public var protein: NutrientDetailModel
    public var chole: NutrientDetailModel
    public var na: NutrientDetailModel
    public var ca: NutrientDetailModel
    public var mg: NutrientDetailModel
    public var k: NutrientDetailModel
    public var fe: NutrientDetailModel
    public var zn: NutrientDetailModel
    public var p: NutrientDetailModel
    public var vita_rae: NutrientDetailModel
    public var vitc: NutrientDetailModel
    public var thia: NutrientDetailModel
    public var ribf: NutrientDetailModel
    public var vitb64: NutrientDetailModel
    public var foldfe: NutrientDetailModel
    public var folfd: NutrientDetailModel
    public var folac: NutrientDetailModel
    public var vitd: NutrientDetailModel
    public var tocpha: NutrientDetailModel
    public var vitk1: NutrientDetailModel
    public var water: NutrientDetailModel
    
    public init(energy: NutrientDetailModel, fat: NutrientDetailModel, fasat: NutrientDetailModel, fatrn: NutrientDetailModel, fams: NutrientDetailModel, fapu: NutrientDetailModel, carbs: NutrientDetailModel, fiber: NutrientDetailModel, sugar: NutrientDetailModel, protein: NutrientDetailModel, chole: NutrientDetailModel, na: NutrientDetailModel, ca: NutrientDetailModel, mg: NutrientDetailModel, k: NutrientDetailModel, fe: NutrientDetailModel, zn: NutrientDetailModel, p: NutrientDetailModel, vita_rae: NutrientDetailModel, vitc: NutrientDetailModel, thia: NutrientDetailModel, ribf: NutrientDetailModel, vitb64: NutrientDetailModel, foldfe: NutrientDetailModel, folfd: NutrientDetailModel, folac: NutrientDetailModel, vitd: NutrientDetailModel, tocpha: NutrientDetailModel, vitk1: NutrientDetailModel, water: NutrientDetailModel) {
        self.energy = energy
        self.fat = fat
        self.fasat = fasat
        self.fatrn = fatrn
        self.fams = fams
        self.fapu = fapu
        self.carbs = carbs
        self.fiber = fiber
        self.sugar = sugar
        self.protein = protein
        self.chole = chole
        self.na = na
        self.ca = ca
        self.mg = mg
        self.k = k
        self.fe = fe
        self.zn = zn
        self.p = p
        self.vita_rae = vita_rae
        self.vitc = vitc
        self.thia = thia
        self.ribf = ribf
        self.vitb64 = vitb64
        self.foldfe = foldfe
        self.folfd = folfd
        self.folac = folac
        self.vitd = vitd
        self.tocpha = tocpha
        self.vitk1 = vitk1
        self.water = water
    }
}
