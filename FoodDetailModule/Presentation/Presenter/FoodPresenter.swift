//
//  FoodPresenter.swift
//  FoodDetailModule
//
//  Created by aldo vernando on 13/02/21.
//

import Foundation
import RxSwift

protocol FoodDetailPresenterProtocol {
    func getFoodDetail(id: String) -> Observable<FoodDetailModel>
    func getNutrients(nutrients: TotalNutrientsModel) -> [NutrientDetailModel]
}

public class FoodDetailPresenter: FoodDetailPresenterProtocol {
    
    private let foodInteractor: FoodUseCase
    
    public init() {
        self.foodInteractor = Injection.init().provideInteractor()
    }
    
    public func getFoodDetail(id: String) -> Observable<FoodDetailModel> {
        return foodInteractor.getFoodDetail(id: id)
    }
    
    public func getNutrients(nutrients: TotalNutrientsModel) -> [NutrientDetailModel] {
        var nutrientArray: [NutrientDetailModel] = []
        nutrientArray.append(nutrients.energy)
        nutrientArray.append(nutrients.protein)
        nutrientArray.append(nutrients.fat)
        nutrientArray.append(nutrients.fatrn)
        nutrientArray.append(nutrients.carbs)
        nutrientArray.append(nutrients.chole)
        nutrientArray.append(nutrients.fiber)
        nutrientArray.append(nutrients.ribf)
        nutrientArray.append(nutrients.thia)
        nutrientArray.append(nutrients.sugar)
        nutrientArray.append(nutrients.water)
        nutrientArray.append(nutrients.fams)
        nutrientArray.append(nutrients.fasat)
        nutrientArray.append(nutrients.fapu)
        nutrientArray.append(nutrients.folac)
        nutrientArray.append(nutrients.folfd)
        nutrientArray.append(nutrients.foldfe)
        nutrientArray.append(nutrients.ca)
        nutrientArray.append(nutrients.zn)
        nutrientArray.append(nutrients.fe)
        nutrientArray.append(nutrients.k)
        nutrientArray.append(nutrients.mg)
        nutrientArray.append(nutrients.na)
        nutrientArray.append(nutrients.p)
        nutrientArray.append(nutrients.tocpha)
        nutrientArray.append(nutrients.vita_rae)
        nutrientArray.append(nutrients.vitc)
        nutrientArray.append(nutrients.vitd)
        nutrientArray.append(nutrients.vitk1)
        nutrientArray.append(nutrients.vitb64)
        
        return nutrientArray
    }
}
