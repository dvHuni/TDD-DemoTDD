//
//  RootViewController+.swift
//  FitNessTests
//
//  Created by AhnSangHoon on 2022/04/24.
//  Copyright © 2022 Razeware. All rights reserved.
//

import UIKit
@testable import FitNess

extension RootViewController {
  var stepController: StepCountController {
    return children.first { $0 is StepCountController }
      as! StepCountController
  }
}
