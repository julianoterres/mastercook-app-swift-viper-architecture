//
//  PostListWorkerTests.swift
//  Blog PostsTests
//
//  Created by Juliano Terres on 03/05/19.
//  Copyright © 2019 Juliano Terres. All rights reserved.
//

import Quick
import Nimble
@testable import MasterCook

// MARK: Methods of PostListWorkerTests
class PostListWorkerTests: QuickSpec {
  
  override func spec() {
    
    var worker: PostListWorker!
    var interactor: PostListInteractorMock!
    var ulrsApi: UrlsApiProtocol!
    
    describe("PostListWorker") {
      
      beforeEach {
        worker = PostListWorker()
        interactor = PostListInteractorMock()
        ulrsApi = UrlsApi()
        worker.interactor = interactor
        worker.urlsApi = ulrsApi
      }
      
      describe("When PostListWorker execute the method fetchPosts") {
        
        context("and request is success") {
          beforeEach {
            worker.network = PostListNetworkSuccessMock()
            worker.fetchPosts()
          }
          it("should call a method fetchedPosts at interactor") {
            expect(interactor.functionCalled) == true
            expect(interactor.dataPassed).notTo(beNil())
          }
        }
        
        context("and request is fail") {
          beforeEach {
            worker.network = PostListNetworkFailMock()
            worker.fetchPosts()
          }
          it("should call a method fetchedFail at interactor") {
            expect(interactor.functionCalled) == true
          }
        }
        
      }
      
    }
    
  }
  
}
