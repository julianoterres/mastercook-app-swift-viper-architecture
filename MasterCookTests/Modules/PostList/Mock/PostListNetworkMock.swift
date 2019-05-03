//
//  PostListNetworkMock.swift
//  MasterCookTests
//
//  Created by Juliano Terres on 03/05/19.
//  Copyright © 2019 Juliano Terres. All rights reserved.
//

import Alamofire
@testable import MasterCook

class PostListNetworkSuccessMock: NetworkProtocol {
  
  func request(url: URL, method: HTTPMethod, parameters: Parameters?, success: @escaping (Data) -> Void, failure: @escaping (String) -> Void) {
    do {
      let path = Bundle.main.path(forResource: "PostListResquestMock", ofType: "json")!
      let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
      success(data)
    } catch {
      failure("Message Error")
    }
  }
  
}

class PostListNetworkFailMock: NetworkProtocol {
  
  func request(url: URL, method: HTTPMethod, parameters: Parameters?, success: @escaping (Data) -> Void, failure: @escaping (String) -> Void) {
    failure("Message Error")
  }
  
}



