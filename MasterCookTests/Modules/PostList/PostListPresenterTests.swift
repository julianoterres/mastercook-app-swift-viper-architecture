//
//  PostListPresenterTests.swift
//  Blog PostsTests
//
//  Created by Juliano Terres on 03/05/19.
//  Copyright © 2019 Juliano Terres. All rights reserved.
//

import Quick
import Nimble
@testable import MasterCook

// MARK: Methods of PostListPresenterTests
class PostListPresenterTests: QuickSpec {
  
  override func spec() {
    
    var view: PostListViewMock!
    var presenter: PostListPresenter!
    var interactor: PostListInteractorMock!
    var router: PostListRouterMock!
    
    describe("PostListPresenter") {
      
      beforeEach {
        view = PostListViewMock()
        presenter = PostListPresenter()
        interactor = PostListInteractorMock()
        router = PostListRouterMock()
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
      }
      
      describe("When PostListPresenter execute the method fetchPosts") {
        beforeEach {
          presenter.fetchPosts()
        }
        it("should call a method fetchPosts at interactor") {
          expect(interactor.functionCalled) == true
        }
      }
      
      describe("When PostListPresenter execute the method goToScreenDetails") {
        beforeEach {
          let post = PostListPresentationEntity(
            authorId: 1,
            category: "Category Name",
            date: "May 5",
            description: "Text Description",
            imageName: "Image Description",
            likes: "100",
            shortDescription: "Text Short Description",
            title: "Title Text"
          )
          presenter.goToScreenDetails(post: post)
        }
        it("should call a method goToScreenDetails at router") {
          expect(router.functionCalled) == true
          expect(router.dataPassed).notTo(beNil())
        }
      }
      
      describe("When PostListPresenter execute the method fetchedPosts") {
        beforeEach {
          let post = PostListPresentationEntity(
            authorId: 1,
            category: "Category Name",
            date: "May 5",
            description: "Text Description",
            imageName: "Image Description",
            likes: "100",
            shortDescription: "Text Short Description",
            title: "Title Text"
          )
          presenter.fetchedPosts(posts: [post])
        }
        it("should call a method showPosts at view") {
          expect(view.functionCalled) == true
          expect(view.dataPassed).notTo(beNil())
        }
      }
      
      describe("When PostListPresenter execute the method fetchedFail") {
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
