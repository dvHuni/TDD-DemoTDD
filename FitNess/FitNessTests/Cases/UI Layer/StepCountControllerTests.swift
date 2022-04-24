//
//  StepCountControllerTests.swift
//  FitNessTests
//
//  Created by AhnSangHoon on 2022/03/01.
//  Copyright © 2022 Razeware. All rights reserved.
//

import XCTest
@testable import FitNess

class StepCountControllerTests: XCTestCase {
  
  var sut: StepCountController!
  
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
  
  override func setUp() {
    super.setUp()
    let rootViewController = getRootViewController()
    sut = rootViewController.stepController
  }
  
  override func tearDown() {
    sut = nil
    removeGoal()
    super.tearDown()
  }
  
  private func setGoal() {
    AppModel.instance.dataModel.goal = 1000
  }
  
  private func removeGoal() {
    AppModel.instance.dataModel.goal = nil
  }
  
  private func setInProgress() {
    setGoal()
    sut.startStopPause(nil)
  }
  
  // MARK: - Initial State

  func testController_whenStartTapped_isInProgress() {
    setInProgress()
    
    let state = AppModel.instance.appState
    XCTAssertEqual(state, AppState.inProgress)
  }
  
  func testController_whenStartTapped_buttonTitleIsPause() {
    setInProgress()
    
    let text = sut.startButton.title(for: .normal)
    XCTAssertEqual(text, AppState.inProgress.nextStateButtonLabel)
  }
  
  func testController_whenGoalUpadted_updateToNewGoal() {
    let newGoal = 50
    sut.updateGoal(newGoal: newGoal)
    let updatedGoal = AppModel.instance.dataModel.goal
    XCTAssertEqual(newGoal, updatedGoal)
  }
  
  func testController_whenLoaded_chaseViewIsNotStarted() {
    let state = sut.chaseView?.state
    XCTAssertEqual(state, .notStarted)
  }
  
  func testChaseView_whenInProgress_viewIsInProgress() {
    setInProgress()

    let state = sut.chaseView?.state
    XCTAssertEqual(state, .inProgress)
  }
}
