import Foundation

enum ToolbarSelection: CaseIterable, Identifiable {
  case photoModal, frameModal, stickerModal, textModal

  var id: Int {
    hashValue
  }
}
