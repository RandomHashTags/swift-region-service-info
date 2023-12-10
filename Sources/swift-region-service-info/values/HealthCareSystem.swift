//
//  HealthCareSystem.swift
//
//
//  Created by Evan Anderson on 12/9/23.
//

import Foundation
import SwiftSovereignStates

// https://en.wikipedia.org/wiki/Health_care_systems_by_country
public struct HealthCareSystem : RegionServiceInfoProtocol {
    public var type : RegionServiceInfoType {
        return RegionServiceInfoType.healthCareSystem
    }
    
    public func yearOfData(for region: Country) -> Int {
        return 2023
    }
    
    public func additionalNotes(for region: Country, locale: Locale) -> String? {
        switch region {
            
        case .india:
            return "Funded by public and private insurances, along with social insurance programs and free public hospitals funded by the municipal, state and federal authorities"
        case .russia:
            return "Funded by federal, regional and municipal budgets and by separate employer's tax payments, but medical aid in state and municipal health establishments in all cases is available for free to all citizens, foreign permanent residents, foreign temporary residents, stateless persons and refugees regardless of their income or employment status"
            
            
        default: return nil
        }
    }
    
    public func sources(for region: Country) -> [RegionServiceInfoSource] {
        switch region {
        case .australia: return sources(region, ssptw(region, continent: "asia", year: 2016))
        case .bahrain:   return sources(region, ssptw(region, continent: "asia", year: 2018))
        case .bhutan:    return sources(region, ssptw(region, continent: "asia", year: 2016))
        case .botswana:  return sources(region, ssptw(region, continent: "africa", year: 2016))
        case .brazil:    return sources(region, ssptw(region, continent: "americas", year: 2010))
        case .brunei:    return sources(region, ssptw(region, continent: "asia", year: 2018))
        case .canada:    return sources(region, ssptw(region, continent: "americas", year: 2016))
        case .cuba:      return sources(region, ssptw(region, continent: "americas", year: 2016))
        case .denmark,
                .faroe_islands,
                .greenland:
            return sources(region, ssptw(region, continent: "europe", year: 2018))
        case .finland:   return sources(region, ssptw(region, continent: "europe", year: 2018))
        case .georgia:   return sources(region, [RegionServiceInfoSource("World Bank Group: Georgia Public Expenditure Review", "https://documents1.worldbank.org/curated/en/630321497350151165/pdf/114062-PER-P156724-PUBLIC-PERFINAL.pdf")])
        case .greece:    return sources(region, ssptw(region, continent: "europe", year: 2018))
        case .iceland:   return sources(region, ssptw(region, continent: "europe", year: 2018))
        case .ireland:   return sources(region, ssptw(region, continent: "europe", year: 2018))
        case .italy:     return sources(region, ssptw(region, continent: "europe", year: 2018))
        case .kuwait:    return [] // TODO: fix
        case .malaysia:  return sources(region, ssptw(region, continent: "asia", year: 2018))
        case .maldives:  return [] // TODO: fix
        default:
            return []
        }
    }
    private func ssptw(_ region: Country, continent: String, year: Int) -> RegionServiceInfoSource {
        let name:String = region.name
        return RegionServiceInfoSource("Social Security Programs Through World: " + name + " (\(year)", "https://www.ssa.gov/policy/docs/progdesc/ssptw/\(year)-\(year+1)/" + continent + "/" + name.lowercased().replacingOccurrences(of: " ", with: "-") + ".html")
    }
    private func sources(_ region: Country, _ source: RegionServiceInfoSource) -> [RegionServiceInfoSource] {
        return sources(region, [source])
    }
    private func sources(_ region: Country, _ sources: [RegionServiceInfoSource]) -> [RegionServiceInfoSource] {
        guard let type:HealthCareSystemType = type(for: region) else { return [] }
        var array:[RegionServiceInfoSource] = [
            RegionServiceInfoSource("Wikipedia: Health care systems by country", "https://en.wikipedia.org/wiki/Health_care_systems_by_country")
        ]
        switch type {
        case .universalGovernmentFunded:
            array.append(RegionServiceInfoSource("Wikipedia: List of countries with universal health care", "https://en.wikipedia.org/wiki/List_of_countries_with_universal_health_care"))
            break
        default:
            break
        }
        array.append(contentsOf: sources)
        return array
    }
    
    public func type(for region: Country) -> HealthCareSystemType? {
        switch region {
        case .australia,
                .bahrain,
                .bhutan,
                .botswana,
                .brazil,
                .brunei,
                .canada,
                .cuba,
                .denmark, .faroe_islands, .greenland,
                .finland,
                .georgia,
                .greece,
                .iceland,
                .ireland,
                .italy,
                .kuwait,
                .malaysia,
                .maldives,
                .malta,
                .new_zealand,
                .north_korea,
                .norway,
                .oman,
                .portugal,
                .san_marino,
                .saudi_arabia,
                .south_africa,
                .spain,
                .sri_lanka,
                .sweden,
                .taiwan,
                .trinidad_and_tobago,
                .ukraine,
                .united_kingdom
            :
            return HealthCareSystemType.universalGovernmentFunded
            
        case .albania,
                .andorra,
                .belgium,
                .bulgaria,
                .china, .hong_kong, .macau,
                .colombia,
                .croatia,
                .czech_republic,
                .estonia,
                .france,
                .hungary,
                .iran,
                .india,
                .japan,
                .latvia,
                .lithuania,
                .luxembourg,
                .monaco,
                .moldova,
                .montenegro,
                .poland,
                .qatar,
                .romania,
                .russia,
                .serbia,
                .singapore,
                .slovakia,
                .slovenia,
                .south_korea,
                .united_arab_emirates
            :
            return HealthCareSystemType.universalPublicInsurance
            
        case .algeria,
                .austria,
                .argentina,
                .chile,
                .cyprus,
                .germany,
                .mexico,
                .peru,
                .turkey:
            return HealthCareSystemType.universalPublicPrivateInsurance
            
        case .israel,
                .liechtenstein,
                .netherlands,
                .switzerland:
            return HealthCareSystemType.universalPrivateInsurance
            
        case .bangladesh,
                .burundi,
                .democratic_republic_of_the_congo,
                .egypt,
                .ethiopia,
                .indonesia,
                .jordan,
                .kenya,
                .nigeria,
                .paraguay,
                .tanzania,
                .uganda,
                .united_states, .american_samoa, .guam, .northern_mariana_islands, .puerto_rico, .united_states_virgin_islands,
                .yemen:
            return HealthCareSystemType.nonUniversalInsurance
        default:
            return nil
        }
    }
}
