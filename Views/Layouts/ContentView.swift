//
//  ContentView.swift
//  KiezKompare
//
//  Created by Yannick Kandulski on 29.04.24.
//

import SwiftUI
import SwiftData
import MapKit

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var nodes: [Node]
    
    @State private var searchText = ""
    
    var filteredNodes: [Node] {
        if searchText.isEmpty {
            return nodes
        } else {
            return nodes.filter { node in
                node.name?.contains(searchText) ?? false || node.timestamp.formatted().contains(searchText)
            }
        }
    }

    var body: some View {
        NavigationSplitView {
            VStack {
                SearchBar(text: $searchText)
                List {
                    ForEach(filteredNodes) { node in
                        NavigationLink {
                            Text("Node at \(node.timestamp, format: Date.FormatStyle(date: .numeric, time: .standard))")
                        } label: {
                            Text(node.name ?? "Unnamed Node")
                        }
                    }
                    .onDelete(perform: deleteNodes)
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
                ToolbarItem {
                    Button(action: addNode) {
                        Label("Add Node", systemImage: "plus")
                    }
                }
            }
        } detail: {
            Text("Select a node")
        }
    }

    private func addNode() {
        withAnimation {
            let newNode = Node(
                id: Int64.random(in: 1...Int64.max),
                latitude: Double.random(in: -90...90),
                longitude: Double.random(in: -180...180),
                timestamp: Date(),
                tags: ["amenity": ["cafe", "restaurant", "park"].randomElement() ?? "cafe"],
                name: ["Cafe Central", "Restaurant Royal", "Green Park"].randomElement() ?? "Cafe Central",
                district: ["Mitte", "Kreuzberg", "Charlottenburg"].randomElement() ?? "Mitte",
                address: ["Unter den Linden 1, 10117 Berlin", "Friedrichstrasse 123, 10117 Berlin", "Kurfürstendamm 20, 10719 Berlin"].randomElement() ?? "Unter den Linden 1, 10117 Berlin"
            )
            modelContext.insert(newNode)
        }
    }

    private func deleteNodes(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(nodes[index])
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Node.self, inMemory: true)
}
