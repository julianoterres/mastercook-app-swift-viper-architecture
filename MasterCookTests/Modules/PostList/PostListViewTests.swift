//
//  PostListViewTests.swift
//  Blog PostsTests
//
//  Created by Juliano Terres on 03/05/19.
//  Copyright © 2019 Juliano Terres. All rights reserved.
//

import Quick
import Nimble
@testable import MasterCook

// MARK: Methods of PostListViewTests
class PostListViewTests: QuickSpec {
  
  override func spec() {
    
    var view: PostListView!
    var presenter: PostListPresenterMock!
    
    describe("PostListView") {
      
      beforeEach {
        view = PostListView()
        presenter = PostListPresenterMock()
        view.presenter = presenter
      }
      
      describe("When PostListView execute the method viewDidLoad") {
        beforeEach {
          view.viewDidLoad()
        }
        it("should call a method fetchPosts at presenter") {
          expect(presenter.functionCalled) == true
        }
      }
      
    }
    
  }
  
}

