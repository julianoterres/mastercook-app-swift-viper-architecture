//
//  PostDetailPresenterTests.swift
//  MasterCookTests
//
//  Created by Juliano Terres on 03/05/19.
//  Copyright © 2019 Juliano Terres. All rights reserved.
//

import Quick
import Nimble
@testable import MasterCook

// MARK: Methods of PostDetailPresenterTests
class PostDetailPresenterTests: QuickSpec {
  
  override func spec() {
    
    var presenter: PostDetailPresenter!
    var view: PostDetailViewMock!
    var interactor: PostDetailInteractorMock!
    
    describe("PostDetailPresenter") {
      
      beforeEach {
        presenter = PostDetailPresenter()
        view = PostDetailViewMock()
        interactor = PostDetailInteractorMock()
        presenter.view = view
        presenter.interactor = interactor
      }
      
      describe("When PostDetailPresenter execute the method fetchAuthor") {
        beforeEach {
          presenter.fetchAuthor()
        }
        it("should call a method fetchAuthor at interactor") {
          expect(interactor.functionCalled) == true
          
        }
      }
      
      describe("When PostDetailPresenter execute the method fetchedAuthor") {
        beforeEach {
          let post = PostDetailPresentationEntity(
            authorEmail: "email",
            authorImageName: "imageName",
            authorName: "authorName",
            description: "description",
            imageName: "imageName",
            title: "Title"
          )
          presenter.fetchedAuthor(post: post)
        }
        it("should call a method showPost at view") {
          expect(view.functionCalled) == true
          expect(view.dataPassed).notTo(beNil())
        }
      }
      
      describe("When PostDetailPresenter execute the method fetchedFail") {
        beforeEach {
          presenter.fetchedFail()
        }
        it("should call a method showError at view") {
          expect(view.functionCalled) == true
        }
      }
      
    }
    
  }
  
}


