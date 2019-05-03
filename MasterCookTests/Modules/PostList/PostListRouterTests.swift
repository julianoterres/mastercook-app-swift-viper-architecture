//
//  PostListRouterTests.swift
//  Blog PostsTests
//
//  Created by Juliano Terres on 03/05/19.
//  Copyright © 2019 Juliano Terres. All rights reserved.
//

import Quick
import Nimble
import UIKit
@testable import MasterCook

// MARK: Methods of PostListRouterTests
class PostListRouterTests: QuickSpec {
  
  override func spec() {
    
    var router: PostListRouter!
    var view: UIViewController!
    
    describe("PostListRouter") {
      
      beforeEach {
        router = PostListRouter()
      }
      
      describe("When PostListRouter execute the method build") {
        beforeEach {
          view = router.build()
        }
        it("should return a view controller") {
          expect(view).to(beAKindOf(UIViewController.self))
        }
      }
      
    }
    
  }
  
}
