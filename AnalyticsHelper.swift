//
//  AnalyticsHelper.swift
//  Google Analytics Simplified
//
//  Created by Edmunds on 30/12/2016.
//  
//

import Foundation
import Google

class AnalyticsHelper {
    
    func analyticLogScreen (screen: String){
        let tracker = GAI.sharedInstance().defaultTracker
        tracker?.set(kGAIScreenName, value: screen)
        
        let build = (GAIDictionaryBuilder.createScreenView().build() as NSDictionary) as! [AnyHashable: Any]
        tracker?.send(build)
    }
    
    func analyticLogAction(category: String, action: String) {
        let tracker = GAI.sharedInstance().defaultTracker
        tracker?.set(kGAIEventAction, value: action)
        
        let build = (GAIDictionaryBuilder.createEvent(withCategory: category, action: action, label: nil, value: nil).build() as NSDictionary) as! [AnyHashable: Any]
        tracker?.send(build)
        
       
    }
}
