//
//  DataModel.swift
//  FitNess
//
//  Created by AhnSangHoon on 2022/03/26.
//  Copyright © 2022 Razeware. All rights reserved.
//

import Foundation

class DataModel {
  var isReachedGoal: Bool {
    if let goal = self.goal, step >= goal {
      return true
    } else {
      return false
    }
  }
  var goal: Int?
  var step: Int = .zero
}
