//
//  PostListInteractorTests.swift
//  Blog PostsTests
//
//  Created by Juliano Terres on 03/05/19.
//  Copyright © 2019 Juliano Terres. All rights reserved.
//

import Quick
import Nimble
@testable import MasterCook

// MARK: Methods of PostListInteractorTests
class PostListInteractorTests: QuickSpec {
  
  override func spec() {
    
    var interactor: PostListInteractor!
    var presenter: PostListPresenterMock!
    var worker: PostListWorkerMock!
    
    describe("PostListInteractor") {
      
      beforeEach {
        interactor = PostListInteractor()
        presenter = PostListPresenterMock()
        worker = PostListWorkerMock()
        interactor.presenter = presenter
        interactor.worker = worker
      }
      
      describe("When PostListInteractor execute the method fetchPosts") {
        beforeEach {
          interactor.fetchPosts()
        }
        it("should call a method fetchPosts at worker") {
          expect(worker.functionCalled) == true
        }
      }
      
      describe("When PostListInteractor execute the method fetchedPosts") {
        beforeEach {
          let postListApiEnttity = PostListApiEntity(
            userId: 1,
            id: 1,
            title: "Title text",
            body: "Description Text"
          )
          interactor.fetchedPosts(posts: [postListApiEnttity])
        }
        it("should call a method fetchedPosts at presenter") {
          expect(presenter.functionCalled) == true
          expect(presenter.dataPassed).notTo(beNil())
        }
      }
      
      describe("When PostListInteractor execute the method fetchedFail") {
        beforeEach {
          interactor.fetchedFail()
        }
        it("should call a method fetchedFail at presenter") {
          expect(presenter.functionCalled) == true
        }
      }
      
    }
    
  }
  
}
