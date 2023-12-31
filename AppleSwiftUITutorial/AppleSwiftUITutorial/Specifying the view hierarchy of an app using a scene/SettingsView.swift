//
//  SettingsView.swift
//  AppleSwiftUITutorial
//
//  Created by simorgh3196 on 2023/09/26.
//

import SwiftUI

struct SettingsView: View {
  var body: some View {
    #if os(macOS)
    SettingsInTabView()
    #else
    SettingsInNavigationStack()
    #endif
  }

  private enum Settings: String, CaseIterable {
    case account = "Account"
    case sync = "Sync"
    case general = "General"
    case appIcon = "App Icon"

    var image: String {
      switch self {
      case .account:
        return "person.crop.circle"
      case .sync:
        return "cloud"
      case .general:
        return "gear"
      case .appIcon:
        return "app"
      }
    }
  }

  private func SettingsInNavigationStack() -> some View {
    NavigationStack {
      List {
        NavigationLink {
          SettingsDetailsView(title: Settings.account.rawValue)
        } label: {
          Label(Settings.account.rawValue, systemImage: Settings.account.image)
        }
        NavigationLink {
          SettingsDetailsView(title: Settings.sync.rawValue)
        } label: {
          Label(Settings.sync.rawValue, systemImage: Settings.sync.image)
        }

        Section {
          NavigationLink {
            SettingsDetailsView(title: Settings.general.rawValue)
          } label: {
            Label(Settings.general.rawValue, systemImage: Settings.general.image)
          }
          NavigationLink {
            SettingsDetailsView(title: Settings.appIcon.rawValue)
          } label: {
            Label(Settings.appIcon.rawValue, systemImage: Settings.appIcon.image)
          }
        }
      }
      .navigationTitle("Settings")
    }
  }

  private func SettingsInTabView() -> some View {
    TabView {
      ForEach(Settings.allCases, id: \.self) { item in
        SettingsDetailsView(title: item.rawValue)
          .tabItem {
            Label(item.rawValue, systemImage: item.image)
          }
          .tag(item)
      }
    }
    .frame(minWidth: 375, minHeight: 150)
  }
}
