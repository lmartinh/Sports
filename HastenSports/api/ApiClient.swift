//
//  Splash.swift
//  HastenSports
//
//  Created by Leticia Martín on 25/01/2020.
//  Copyright © 2020 Leticia Martín. All rights reserved.
//

import Foundation
import Alamofire
import RxSwift

class ApiClient {
    
    static func getSportsInfo() -> Observable<SportsData> {
        return request(ApiRouter.getSportsInfo)
    }
    //-------------------------------------------------------------------------------------------------
    
    private static func request<T: Codable> (_ urlConvertible: URLRequestConvertible) -> Observable<T> {
        //Create an RxSwift observable
        return Observable<T>.create { observer in
            // HTTP request
            let request = AF.request(urlConvertible).responseDecodable { (response: AFDataResponse<T>) in
                
                switch response.result {
                case .success(let value):
                    print("SUCCESS; Value: \(value)")
                    //Return the value in onNext
                    observer.onNext(value)
                    observer.onCompleted()
                case .failure(let error):
                    print("ERROR; STatusCode: \(response.response?.statusCode ?? 0)")
                    observer.onError(error)
                }
            }
            
            //Stop the request
            return Disposables.create {
                request.cancel()
            }
        }
    }
}
