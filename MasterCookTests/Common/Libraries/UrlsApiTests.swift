//
//  UrlsApiTests.swift
//  MasterCookTests
//
//  Created by Juliano Terres on 03/05/19.
//  Copyright © 2019 Juliano Terres. All rights reserved.
//

import Quick
import Nimble
@testable import MasterCook

// MARK: Methods of UrlsApiTests
class UrlsApiTests: QuickSpec {
  
  override func spec() {
    
    var urlsApi: UrlsApi!
    
    describe("UrlsApi") {
      
      beforeEach {
        urlsApi = UrlsApi()
      }
      
      describe("When get the variable posts") {
        it("should return a string") {
          expect(urlsApi.posts) == URL(string: "https://jsonplaceholder.typicode.com/posts")
        }
      }
      
      describe("When get the variable users") {
        it("should return a string") {
          expect(urlsApi.users) == URL(string: "https://jsonplaceholder.typicode.com/users")
        }
      }
      
    }
    
  }
  
}

