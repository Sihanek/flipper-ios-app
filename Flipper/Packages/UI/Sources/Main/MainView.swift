import Core
import SwiftUI

struct MainView: View {
    @EnvironmentObject var device: Device
    @EnvironmentObject var archiveService: ArchiveService

    @StateObject var tabViewController: TabViewController = .init()

    @AppStorage(.selectedTabKey) var selectedTab: TabView.Tab = .device {
        didSet {
            if oldValue == selectedTab {
                tabViewController.popToRootView(for: selectedTab)
            }
        }
    }

    @State private var importedName = ""
    @State private var importedOpacity = 0.0

    @State private var showWidgetSettings = false

    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                DeviceView()
                    .opacity(selectedTab == .device ? 1 : 0)
                ArchiveView()
                    .opacity(selectedTab == .archive ? 1 : 0)
                HubView()
                    .opacity(selectedTab == .hub ? 1 : 0)

                ImportedBanner(itemName: importedName)
                    .opacity(importedOpacity)
            }

            if !tabViewController.isHidden {
                TabView(selected: $selectedTab)
                    .transition(.move(edge: .bottom))
            }
        }
        .edgesIgnoringSafeArea(.bottom)
        .environmentObject(tabViewController)
        .onReceive(archiveService.imported) { item in
            onItemAdded(item: item)
        }
        .onOpenURL { url in
            if url == .widgetSettings {
                showWidgetSettings = true
            }
        }
        .fullScreenCover(isPresented: $showWidgetSettings) {
            WidgetSettingsView()
        }
    }

    func onItemAdded(item: ArchiveItem) {
        importedName = item.name.value
        Task { @MainActor in
            try await Task.sleep(milliseconds: 200)
            withAnimation { importedOpacity = 1.0 }
            try await Task.sleep(seconds: 3)
            withAnimation { importedOpacity = 0 }
        }
    }
}
