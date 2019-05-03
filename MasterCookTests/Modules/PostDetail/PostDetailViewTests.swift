//
//  PostDetailViewTests.swift
//  MasterCookTests
//
//  Created by Juliano Terres on 03/05/19.
//  Copyright © 2019 Juliano Terres. All rights reserved.
//

import Quick
import Nimble
@testable import MasterCook

// MARK: Methods of PostDetailViewTests
class PostDetailViewTests: QuickSpec {
  
  override func spec() {
    
    var view: PostListView!
    var presenter: PostListPresenterMock!
    
    describe("PostDetailView") {
      
      beforeEach {
        view = PostListView()
        presenter = PostListPresenterMock()
        view.presenter = presenter
      }
      
      describe("When PostDetailView execute the method viewDidLoad") {
        beforeEach {
          view.viewDidLoad()
        }
        it("should call a method fetchAuthor at presenter") {
          expect(presenter.functionCalled) == true
        }
      }
      
    }
    
  }
  
}
