//
//  ScreenViewModel.swift
//  Example
//
//  Created by Bruno Oliveira on 17/01/2019.
//  Copyright © 2019 Bruno Oliveira. All rights reserved.
//

import Foundation

class ScreenViewModel {
  private var currentTime: Int
  private let initialTime: Int

  init(time: Int) {
    self.currentTime = time
    self.initialTime = time
  }
  
  func tick() -> Int {
    if (currentTime == -1) {
      currentTime = initialTime
    }
    currentTime -= 1
    return currentTime + 1
  }
}
