//
//  PostDetailRouterTests.swift
//  MasterCookTests
//
//  Created by Juliano Terres on 03/05/19.
//  Copyright © 2019 Juliano Terres. All rights reserved.
//

import Quick
import Nimble
import UIKit
@testable import MasterCook

// MARK: Methods of PostDetailRouterTests
class PostDetailRouterTests: QuickSpec {
  
  override func spec() {
    
    var router: PostDetailRouter!
    var view: UIViewController!
    
    describe("PostDetailRouter") {
      
      beforeEach {
        router = PostDetailRouter()
      }
      
      describe("When PostDetailRouter execute the method build") {
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
          view = router.build(post: post)
        }
        it("should return a view controller") {
          expect(view).to(beAKindOf(UIViewController.self))
        }
      }
      
    }
    
  }
  
}
