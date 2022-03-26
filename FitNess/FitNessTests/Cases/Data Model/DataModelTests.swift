//
//  DataModelTests.swift
//  FitNessTests
//
//  Created by AhnSangHoon on 2022/03/26.
//  Copyright © 2022 Razeware. All rights reserved.
//

import XCTest
@testable import FitNess

class DataModelTests: XCTestCase {
  var sut: DataModel!
  
  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
    try super.setUpWithError()
    sut = DataModel()
  }
  
  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    sut = nil
    try super.tearDownWithError()
  }

  func testDataModel_whenInitialized_isReachedGoalIsFalse() {
    // when
    sut = DataModel()
    // then
    XCTAssertFalse(sut.isReachedGoal, "isReachedGoal should be false when the model is created")
  }
}
