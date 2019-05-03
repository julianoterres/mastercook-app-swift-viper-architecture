//
//  UIColorExtensionTests.swift
//  MasterCookTests
//
//  Created by Juliano Terres on 03/05/19.
//  Copyright © 2019 Juliano Terres. All rights reserved.
//

import Quick
import Nimble
@testable import MasterCook

// MARK: Methods of UIColorExtensionTests
class UIColorExtensionTests: QuickSpec {
  
  override func spec() {
    
    describe("UIFonts") {
      
      describe("When get the color tableLineSeparator") {
        it("should return a color #C0C0C5") {
          expect(UIColor.tableLineSeparator) == "#C0C0C5".contertToColor
        }
      }
      
      describe("When get the color background") {
        it("should return a color #F5F6F8") {
          expect(UIColor.background) == "#F5F6F8".contertToColor
        }
      }
      
      describe("When get the color title") {
        it("should return a color #2C2D2F") {
          expect(UIColor.title) == "#2C2D2F".contertToColor
        }
      }
      
      describe("When get the color text") {
        it("should return a color #5C5C5C") {
          expect(UIColor.text) == "#5C5C5C".contertToColor
        }
      }
      
      describe("When get the color category") {
        it("should return a color #2863EC") {
          expect(UIColor.category) == "#2863EC".contertToColor
        }
      }
      
      describe("When get the color backButton") {
        it("should return a color #2863EC") {
          expect(UIColor.backButton) == "#2863EC".contertToColor
        }
      }
      
      describe("When get the color date") {
        it("should return a color #3C5B68") {
          expect(UIColor.date) == "#3C5B68".contertToColor
        }
      }
      
      describe("When get the color likes") {
        it("should return a color #464646") {
          expect(UIColor.likes) == "#464646".contertToColor
        }
      }
      
      describe("When get the color heart") {
        it("should return a color #ec7465") {
          expect(UIColor.heart) == "#ec7465".contertToColor
        }
      }
      
      describe("When get the color shadowBox") {
        it("should return a color UIColor(red:0.59, green:0.63, blue:0.80, alpha:0.3)") {
          expect(UIColor.shadowBox) == UIColor(red:0.59, green:0.63, blue:0.80, alpha:0.3)
        }
      }
      
    }
    
  }
  
}
