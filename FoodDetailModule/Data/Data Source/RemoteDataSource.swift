//
//  RemoteDataSource.swift
//  FoodDetailModule
//
//  Created by aldo vernando on 13/02/21.
//

import Foundation
import Alamofire
import RxSwift

protocol RemoteDataSourceProtocol {
    func getFoodDetail(id: String) -> Observable<FoodDetailResponse>
}

class RemoteDataSource: RemoteDataSourceProtocol {
    
    func getFoodDetail(id: String) -> Observable<FoodDetailResponse> {
    
        let headers: HTTPHeaders = [
            "Content-Type": Constant.APP_JSON
        ]
        
        let parameters: [String : Any] = [
            "app_id": Constant.APP_ID,
            "app_key": Constant.API_KEY
        ]
        
        let urlParameters = Helper.generateParameter(param: parameters)
        let url = "\(Endpoint.Foods.getDetail.url)?\(urlParameters)"
        
        let bodyParameters = [
            "ingredients": [
                [
                    "quantity": 1,
                    "measureURI": Constant.MEASURE_URI,
                    "foodId": id
                ]
            ]
        ]
        
        return Observable<FoodDetailResponse>.create { observer in
        
            AF.request(url, method: .post, parameters: bodyParameters, encoding: JSONEncoding.default, headers: headers).responseDecodable(of: FoodDetailResponse.self) { response in
                switch response.result {
                case .success(let value):
                    observer.onNext(value)
                    observer.onCompleted()
                case .failure(let error):
                    observer.onError(error)
                }
            }
            
            return Disposables.create()
        }
    }
}
