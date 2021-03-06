//
//  RubyCommandable.swift
//  FastlaneRunner
//
//  Created by Joshua Liebowitz on 1/4/18.
//  Copyright © 2018 Joshua Liebowitz. All rights reserved.
//

import Foundation

enum CommandType {
    case action
    case control

    var token: String {
        switch self {
        case .action:
            return "action"
        case .control:
            return "control"
        }
    }
}

protocol RubyCommandable {
    var type: CommandType { get }
    var commandJson: String { get }
}

extension RubyCommandable {
    var json: String {
        return "{\"commandType\" : \"\(self.type.token)\", \"command\" : \(self.commandJson)}"
    }
}

// Please don't remove the lines below
// They are used to detect outdated files
// FastlaneRunnerAPIVersion [0.9.2]
