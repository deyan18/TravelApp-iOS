//
//  AcmeMobile_iOSApp.swift
//  AcmeMobile-iOS
//
//  Created by Deyan on 5/4/23.
//

import SwiftUI
import Firebase

@main
struct AcmeMobile_iOSApp: App {
    @StateObject var vm: MainViewModel = MainViewModel()

    init(){
        if FirebaseManager.shared.auth.currentUser != nil{
            //vm.fetchCurrentUser()
            vm.signedIn = true
        }

    }

    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(vm)
        }
    }
}
