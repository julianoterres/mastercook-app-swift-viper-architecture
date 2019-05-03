//
//  PostDetailInteractorTests.swift
//  MasterCookTests
//
//  Created by Juliano Terres on 03/05/19.
//  Copyright © 2019 Juliano Terres. All rights reserved.
//

import Quick
import Nimble
@testable import MasterCook

// MARK: Methods of PostDetailInteractorTests
class PostDetailInteractorTests: QuickSpec {
  
  override func spec() {
    
    var interactor: PostDetailInteractor!
    var presenter: PostDetailPresenterMock!
    var worker: PostDetailWorkerMock!
    var post: PostListPresentationEntity!
    
    describe("PostDetailInteractor") {
      
      beforeEach {
        interactor = PostDetailInteractor()
        presenter = PostDetailPresenterMock()
        worker = PostDetailWorkerMock()
        post = PostListPresentationEntity(
          authorId: 1,
          category: "Category Name",
          date: "May 5",
          description: "Text Description",
          imageName: "Image Description",
          likes: "100",
          shortDescription: "Text Short Description",
          title: "Title Text"
        )
        interactor.post = post
        interactor.presenter = presenter
        interactor.worker = worker
      }
      
      describe("When PostDetailInteractor execute the method fetchAuthor") {
        beforeEach {
          interactor.fetchAuthor()
        }
        it("should call a method fetchAuthor at worker") {
          expect(worker.functionCalled) == true
        }
      }
      
      describe("When PostDetailInteractor execute the method fetchedAuthor") {
        beforeEach {
          do {
            let path = Bundle.main.path(forResource: "PostDetailRequestMock", ofType: "json")!
            let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
            let authors = try JSONDecoder().decode([PostDetailAuthorApiEntity].self, from: data)
            interactor.fetchedAuthor(authors: authors)
          } catch {
            fail()
          }
        }
        it("should call a method fetchedAuthor at presenter") {
          expect(presenter.functionCalled) == true
          expect(presenter.dataPassed).notTo(beNil())
        }
      }
      
      describe("When PostDetailInteractor execute the method fetchedFail") {
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

