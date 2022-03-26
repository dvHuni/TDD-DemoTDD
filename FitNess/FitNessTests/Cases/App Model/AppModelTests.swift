//
//  AppModelTests.swift
//  AppModelTests
//
//  Created by AhnSangHoon on 2022/02/25.
//  Copyright © 2022 Razeware. All rights reserved.
//

import XCTest

@testable import FitNess

class AppModelTests: XCTestCase {
  
  var sut: AppModel!
  
  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
  
  func testExample() throws {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    // Any test you write for XCTest can be annotated as throws and async.
    // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
    // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
  }
  
  func testPerformanceExample() throws {
    // This is an example of a performance test case.
    measure {
      // Put the code you want to measure the time of here.
    }
  }
  
  override func setUp() {
    super.setUp()
    sut = AppModel()
  }
  
  override func tearDown() {
    sut = nil
    super.tearDown()
  }
  
  func test_AppModel_whenInitialized_isNotStartedAppState() {
    // when
    let state = sut.appState

    // then
    XCTAssertEqual(state, AppState.notStarted)
  }
  
  func test_AppModel_whenStartButtonPressed_isInProgressAppState() {
    // when
    sut.start()
    
    // then
    let observedState = sut.appState
    XCTAssertEqual(observedState, AppState.inProgress)
  }
  
}
