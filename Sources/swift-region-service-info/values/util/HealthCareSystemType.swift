//
//  HealthCareSystem.swift
//
//
//  Created by Evan Anderson on 12/9/23.
//

import Foundation

public enum HealthCareSystemType {
    case universalGovernmentFunded
    case universalPublicInsurance
    case universalPublicPrivateInsurance
    case universalPrivateInsurance
    case nonUniversalInsurance
    
    public func name(for locale: Locale) -> String { // TODO: localize
        return "\(self)"
    }
    
    public func description(for locale: Locale) -> String { // TODO: localize
        switch self {
        case .universalGovernmentFunded:
            return "In this system (also known as single-payer healthcare) government-funded healthcare is available to all citizens regardless of their income or employment status. Some countries may provide healthcare to non-citizen residents, while some may require them to buy private insurance."
        case .universalPublicInsurance:
            return "In this system workers have social insurance. Usually government withholds part of their wage, which is divided between employee and employer. People who don't have legal contract of employment and/or can't register as unemployed may be ineligible for free health care."
        case .universalPublicPrivateInsurance:
            return "In this system some people receive healthcare via primary private insurance, while people who are ineligible for it, from government."
        case .universalPrivateInsurance:
            return "In this system people receive healthcare via mandatory private insurance, usually subsidized by the government for low-income citizens."
        case .nonUniversalInsurance:
            return "In this system some citizens have private health insurance, some are eligible for subsidized public health care, while some are not insured at all."
        }
    }
}
