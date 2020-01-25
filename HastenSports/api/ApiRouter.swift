//
//  ApiRouter.swift
//  HastenSports
//
//  Created by Leticia Martín on 25/01/2020.
//  Copyright © 2020 Leticia Martín. All rights reserved.
//

import Foundation
import Alamofire

enum ApiRouter: URLRequestConvertible {
    
    case getSportsInfo
    
    func asURLRequest() throws -> URLRequest {
        let url = try ApiConstants.baseUrl.asURL()
        
        var urlRequest = URLRequest(url: url.appendingPathComponent(path))
        
        //Http method
        urlRequest.httpMethod = method.rawValue
        
        // Common Headers
        urlRequest.setValue(ApiConstants.ContentType.json.rawValue, forHTTPHeaderField: ApiConstants.HttpHeaderField.acceptType.rawValue)
        urlRequest.setValue(ApiConstants.ContentType.json.rawValue, forHTTPHeaderField: ApiConstants.HttpHeaderField.contentType.rawValue)
       
        
        //Encoding
        let encoding: ParameterEncoding = {
            switch method {
            case .get:
                return URLEncoding.default
            default:
                return JSONEncoding.default
            }

        }()
            
            print("PARAMETERS: \(String(describing: parameters))")
            return try encoding.encode(urlRequest, with: parameters)
        }

        private var method: HTTPMethod {
            switch self {
            case .getSportsInfo:
                return .get
            }
        }
        
        private var path: String {
            switch self {
            case .getSportsInfo:
                print("URL: \(ApiConstants.SPORTS)")
                return ApiConstants.SPORTS
            }
        }
        
        //MARK: - Optional Parameters
        
        private var parameters: Parameters? {
            switch self {
            case .getSportsInfo:
                return [:]
            }
        }
    }



