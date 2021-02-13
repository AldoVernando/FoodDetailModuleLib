//
//  FoodInteractor.swift
//  FoodDetailModule
//
//  Created by aldo vernando on 13/02/21.
//

import Foundation
import RxSwift

protocol FoodUseCase {
    func getFoodDetail(id: String) -> Observable<FoodDetailModel>
}

class FoodInteractor: FoodUseCase {
    
    private let foodRepository: FoodRepositoryProtocol
    
    init(repository: FoodRepositoryProtocol) {
        self.foodRepository = repository
    }
    
    func getFoodDetail(id: String) -> Observable<FoodDetailModel> {
        return foodRepository.getFoodDetail(id: id)
    }
}
