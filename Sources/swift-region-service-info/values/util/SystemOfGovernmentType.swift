//
//  SystemOfGovernmentType.swift
//
//
//  Created by Evan Anderson on 12/10/23.
//

import Foundation

// https://en.wikipedia.org/wiki/List_of_countries_by_system_of_government
public enum SystemOfGovernmentType {
    case presidentialRepublic
    case semiPresidentialRepublic
    case republicExecutivePresidency
    case parliamentaryRepublic
    case constitutionalMonarchyCeremonial
    case constitutionalMonarchyExecutive
    case absoluteMonarchy
    case onePartyState
    
    case unknown
    
    public func name(for locale: Locale) -> String {
        return "\(self)" // TODO: fix
    }
    
    public func description(for locale: Locale) -> String {
        switch self {
        case .presidentialRepublic:
            return "Head of state is a president that is the head of government and is independent of legislature"
        case .semiPresidentialRepublic:
            return "Head of state is a president that has some executive powers and is independent of legislature; remaining executive power is vested in ministry that is subject to parliamentary confidence"
        case .republicExecutivePresidency:
            return "President or directory is both head of state and government; ministry, including the president, may or may not be subject to parliamentary confidence"
        case .parliamentaryRepublic:
            return "Head of state is a president that is mostly or entirely ceremonial; ministry is subject to parliamentary confidence"
        case .constitutionalMonarchyCeremonial:
            return "Head of state is a monarch that is mostly or entirely ceremonial; ministry is subject to parliamentary confidence"
        case .constitutionalMonarchyExecutive:
            return "Head of state is an executive monarch; monarch personally exercises power in concert with other institutions; sometimes known as a semi-constitutional monarchy"
        case .absoluteMonarchy:
            return "Head of state is executive; all authority vested in absolute monarch"
        case .onePartyState:
            return "Head of state is executive or ceremonial; power constitutionally linked to a single political party"
            
        case .unknown:
            return "idk bruh"
        }
    }
}
