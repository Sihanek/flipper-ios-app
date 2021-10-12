import Core
import SwiftUI

struct StorageView: View {
    @StateObject var viewModel: StorageViewModel

    var body: some View {
        VStack {
            if let content = viewModel.content {
                switch content {
                case .list(let elements):
                    List {
                        if !viewModel.path.isEmpty {
                            Button("..") {
                                viewModel.moveUp()
                            }
                        }
                        if !elements.isEmpty {
                            list(elements: elements)
                        }
                    }
                case .data:
                    TextEditor(text: $viewModel.text)
                        .clipShape(RoundedRectangle(cornerRadius: 6))
                        .overlay(
                            RoundedRectangle(cornerRadius: 6)
                                .stroke(Color.secondary, lineWidth: 1))

                    HStack {
                        RoundedButton("Close") {
                            viewModel.moveUp()
                        }

                        RoundedButton("Save") {
                            viewModel.save()
                        }
                    }
                    .padding(.bottom, 30)
                }
            } else {
                ProgressView()
            }
        }
        .navigationTitle(viewModel.title)
        .navigationBarTitleDisplayMode(.inline)
    }

    func list(elements: [Element]) -> some View {
        ForEach(elements, id: \.description) {
            switch $0 {
            case .directory(let directory):
                Button(directory.name) {
                    viewModel.listDirectory(directory.name)
                }
            case .file(let file):
                if let data = file.data, !data.isEmpty {
                    Text(String(decoding: data, as: UTF8.self))
                } else {
                    if viewModel.canRead(file) {
                        Button {
                            viewModel.readFile(file)
                        } label: {
                            FileRow(file: file)
                        }
                    } else {
                        FileRow(file: file)
                    }
                }
            }
        }
        .onDelete { indexSet in
            if let index = indexSet.first {
                viewModel.delete(at: index)
            }
        }
    }
}

struct FileRow: View {
    let file: File

    var body: some View {
        HStack {
            Text(file.name)
            Spacer()
            Text("\(file.size) bytes")
        }
    }
}
