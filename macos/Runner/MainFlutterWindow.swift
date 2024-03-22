import Cocoa
import FlutterMacOS

class MainFlutterWindow: NSWindow {
  override func awakeFromNib() {
      let minSize = NSSize(width: 900, height: 580)
    let flutterViewController = FlutterViewController()

    let windowFrame = NSRect(x: 0, y: 0, width: 900, height: 580)
      
    self.contentViewController = flutterViewController
    self.setFrame(windowFrame, display: true,animate: true)
      self.contentMinSize = minSize
    

    RegisterGeneratedPlugins(registry: flutterViewController)

    super.awakeFromNib()
  }
}
