//
//  SectionEnum.swift
//  UberEats
//
//  Created by admin on 31/01/2019.
//  Copyright © 2019 team-b1. All rights reserved.
//
import UIKit

enum Section: Int, CaseIterable {
    case bannerScroll = 0
    case recommendFood = 1
    case nearestRest = 2
    case expectedTime = 3
    case newRest = 4
    case discount = 5
    case moreRest = 6
    case searchAndSee = 7

    var identifier: String {
        switch self {
        case .moreRest:
            return "SeeMoreRestTableViewCellId"
        case .recommendFood:
            return "RecommendCollectionViewCellId"
        case .nearestRest:
            return "NearestCollectionViewCellId"
        case .newRest:
            return "NewRestCollectionViewCellId"
        case .expectedTime:
            return "ExpectTimeCollectionViewCellId"
        default:
            return ""
        }
    }

    var nibName: String {
        switch self {
        case .moreRest:
            return "SeeMoreRestTableViewCell"
        case .recommendFood:
            return "RecommendCollectionViewCell"
        case .nearestRest:
            return "NearestCollectionViewCell"
        case .newRest:
            return "NewRestCollectionViewCell"
        case .expectedTime:
            return "ExpectTimeCollectionViewCell"
        default:
            return ""
        }
    }

    var numberOfSection: Int {
        switch self {case .recommendFood, .nearestRest, .expectedTime, .newRest, .discount, .searchAndSee:
            return 1
        case .bannerScroll:
            return 0
        default:
            return 2
        }
    }

    func heightOfTableViewCell() -> CGFloat {
        switch self {
        case .recommendFood, .nearestRest, .expectedTime, .newRest, .moreRest:
            return heightByDevice(section: self)
        case .discount:
            return 60
        case .searchAndSee:
            return 60
        case .bannerScroll:
            return 0
        default:
            return 60
        }
    }

    func heightByDevice(section: Section) -> CGFloat {
        switch self {
        case .recommendFood, .newRest, .expectedTime, .nearestRest, .moreRest:
            switch UIScreen.main.nativeBounds.height {
            case 960://iPhones_4_4S
                return 343
            case 1136://iPhones_5_5s_5c_SE
                return 324
            case 1334://iPhones_6_6s_7_8
                return 370
            case 1792://iPhone_XR
                return 380
            case 1920, 2208://iPhones_6Plus_6sPlus_7Plus_8Plus
                return 360
            case 2436://iPhones_X_XS
                return 370
            case 2688://iPhone_XSMax
                return 400
            default://unknown
                return 300
            }
        default:
            return 400
        }
    }

    var getEdgeInset: UIEdgeInsets {
        switch self {
        case .bannerScroll:
            return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        case .recommendFood:
            return UIEdgeInsets(top: 0, left: 24, bottom: 0, right: 24)
        case .nearestRest:
            return UIEdgeInsets(top: 0, left: 24, bottom: 24, right: 24)
        case .expectedTime:
            return UIEdgeInsets(top: 30, left: 30, bottom: 30, right: 30)
        case .newRest:
            return UIEdgeInsets(top: 30, left: 30, bottom: 30, right: 30)
        default:
            return UIEdgeInsets(top: 30, left: 30, bottom: 30, right: 30)
        }
    }

}
