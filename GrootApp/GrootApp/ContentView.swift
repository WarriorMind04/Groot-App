//
//  ContentView.swift
//  GrootApp
//
//  Created by José Miguel Guerrero Jiménez on 02/12/25.
//

import SwiftUI
import UserNotifications


struct ContentView: View {
    @StateObject private var notifications = NotificationManager.instance
    var body: some View {
        
        tabBar()
            .onAppear{
                //NotificationManager.instance.requestAuthorization()
                //NotificationManager.instance.scheduleDailyNotification()
                notifications.requestAuthorization()
                notifications.scheduleRandomDailyNotifications()
            }
            .sheet(isPresented: $notifications.showModalFromNotification) {
                            NotificationModal()
                        }
        //NotificationsExample()
    }
    
}

#Preview {
    ContentView()
}
