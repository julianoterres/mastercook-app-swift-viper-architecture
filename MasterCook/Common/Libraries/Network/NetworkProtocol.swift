//
//  NetworkProtocol.swift
//  Blog Posts
//
//  Created by Juliano Terres on 01/05/19.
//  Copyright © 2019 Juliano Terres. All rights reserved.
//

import Alamofire

protocol NetworkProtocol {
  func request(url: URL, method: HTTPMethod, parameters: Parameters?, success: @escaping (Data) -> Void, failure: @escaping(_ error: String) -> Void)
}
