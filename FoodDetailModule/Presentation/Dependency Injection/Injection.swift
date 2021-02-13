//
//  Injection.swift
//  FoodDetailModule
//
//  Created by aldo vernando on 13/02/21.
//

import Foundation

final class Injection: NSObject {
    
    private func provideRemoteDataSource() -> RemoteDataSourceProtocol {
        return RemoteDataSource()
    }
    
    private func provideRepository() -> FoodRepositoryProtocol {
        let remote = provideRemoteDataSource()
        return FoodRepository(remote: remote)
    }
    
    func provideInteractor() -> FoodUseCase {
        let foodRepository = provideRepository()
        return FoodInteractor(repository: foodRepository)
    }
}
