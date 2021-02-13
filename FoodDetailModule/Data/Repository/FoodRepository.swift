//
//  FoodRepository.swift
//  FoodDetailModule
//
//  Created by aldo vernando on 13/02/21.
//

import Foundation
import RxSwift

protocol FoodRepositoryProtocol {
    func getFoodDetail(id: String) -> Observable<FoodDetailModel>
}

class FoodRepository: FoodRepositoryProtocol {
    
    private let remote: RemoteDataSourceProtocol
    
    init(remote: RemoteDataSourceProtocol) {
        self.remote = remote
    }
    
    func getFoodDetail(id: String) -> Observable<FoodDetailModel> {
        
        var food: FoodDetailModel?
        
        return Observable<FoodDetailModel>.create { observer in
            
            self.remote.getFoodDetail(id: id)
                .observeOn(MainScheduler.instance)
                .subscribe { result in
                    
                    var totalNutrients: TotalNutrientsModel?
                    
                    if let nutrients = result.totalNutrients {
                        totalNutrients = TotalNutrientsModel(
                            energy: NutrientDetailModel(nutrients.ENERC_KCAL),
                            fat: NutrientDetailModel(nutrients.FAT),
                            fasat: NutrientDetailModel(nutrients.FASAT),
                            fatrn: NutrientDetailModel(nutrients.FATRN),
                            fams: NutrientDetailModel(nutrients.FAMS),
                            fapu: NutrientDetailModel(nutrients.FAPU),
                            carbs: NutrientDetailModel(nutrients.CHOCDF),
                            fiber: NutrientDetailModel(nutrients.FIBTG),
                            sugar: NutrientDetailModel(nutrients.SUGAR),
                            protein: NutrientDetailModel(nutrients.PROCNT),
                            chole: NutrientDetailModel(nutrients.CHOLE),
                            na: NutrientDetailModel(nutrients.NA),
                            ca: NutrientDetailModel(nutrients.CA),
                            mg: NutrientDetailModel(nutrients.MG),
                            k: NutrientDetailModel(nutrients.K),
                            fe: NutrientDetailModel(nutrients.FE),
                            zn: NutrientDetailModel(nutrients.ZN),
                            p: NutrientDetailModel(nutrients.P),
                            vita_rae: NutrientDetailModel(nutrients.VITA_RAE),
                            vitc: NutrientDetailModel(nutrients.VITC),
                            thia: NutrientDetailModel(nutrients.THIA),
                            ribf: NutrientDetailModel(nutrients.RIBF),
                            vitb64: NutrientDetailModel(nutrients.VITB6A),
                            foldfe: NutrientDetailModel(nutrients.FOLDFE),
                            folfd: NutrientDetailModel(nutrients.FOLFD),
                            folac: NutrientDetailModel(nutrients.FOLAC),
                            vitd: NutrientDetailModel(nutrients.VITD),
                            tocpha: NutrientDetailModel(nutrients.TOCPHA),
                            vitk1: NutrientDetailModel(nutrients.VITK1),
                            water: NutrientDetailModel(nutrients.WATER)
                        )
                    }
                    
                    food = FoodDetailModel(calories: result.calories ?? 0, weight: result.totalWeight ?? 0, healthLabels: result.healthLabels ?? [], totalNutrients: totalNutrients)
                } onCompleted: {
                    if let food = food {
                        observer.onNext(food)
                        observer.onCompleted()
                    }
                }
            
            return Disposables.create()
        }
    }
}
