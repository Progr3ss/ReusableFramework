import UIKit
import Foundation

public class RazeCore {
    
    /// Allows you to convert a 6 digit hexadecimal string into a UIColor instance
    /// -Warning: The # symol is stripped from the beginning of the string submitted here.
    /// - Parameter hexString: a 6-digital hexadecimal string. Use 6 digital rather than 8, and add the accompanying alpha
    /// - Returns: A UICOlor defined by the hexString paramter
    internal class func colorFromhexString(_ hexString: String) -> UIColor {
        var cString:String = hexString.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()

          if (cString.hasPrefix("#")) {
              cString.remove(at: cString.startIndex)
          }

          if ((cString.count) != 6) {
              return UIColor.gray
          }

          var rgbValue:UInt64 = 0
          Scanner(string: cString).scanHexInt64(&rgbValue)

          return UIColor(
              red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
              green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
              blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
              alpha: CGFloat(1.0)
          )
    }
    
    /// The most eye opening color
    public static var razeColor:UIColor {
        return self.colorFromhexString("006736")
    }
}
