//
//  PostDetailWorkerTests.swift
//  MasterCookTests
//
//  Created by Juliano Terres on 03/05/19.
//  Copyright © 2019 Juliano Terres. All rights reserved.
//

import Quick
import Nimble
@testable import MasterCook

// MARK: Methods of PostDetailWorkerTests
class PostDetailWorkerTests: QuickSpec {
  
  override func spec() {
    
    var worker: PostDetailWorker!
    var interactor: PostDetailInteractorMock!
    var ulrsApi: UrlsApiProtocol!
    
    describe("PostDetailWorker") {
      
      beforeEach {
        worker = PostDetailWorker()
        interactor = PostDetailInteractorMock()
        ulrsApi = UrlsApi()
        worker.interactor = interactor
        worker.urlsApi = ulrsApi
      }
      
      describe("When PostDetailWorker execute the method fetchAuthor") {
        
        context("and request is success") {
          beforeEach {
            worker.network = PostDetailNetworkSuccessMock()
            worker.fetchAuthor()
          }
          it("should call a method fetchedAuthor at interactor") {
            expect(interactor.functionCalled) == true
            expect(interactor.dataPassed).notTo(beNil())
          }
        }
        
        context("and request is fail") {
          beforeEach {
            worker.network = PostDetailNetworkFailMock()
            worker.fetchAuthor()
          }
          it("should call a method fetchedFail at interactor") {
            expect(interactor.functionCalled) == true
          }
        }
        
      }
      
    }
    
  }
  
}



