import Foundation

public class GoldenRetriever {

  public init() {}

  public func fetch(resource: String, closure: (data: NSData, error: NSError?) -> Void) {
    if let url = NSURL(string: resource) {
      let session = NSURLSession.sharedSession()
      let request = NSURLRequest(URL: url)
      let task = session.dataTaskWithRequest(request,
        completionHandler: { (data, response, error) -> Void in
          closure(data: data, error: error)
      })

      task.resume()
    }
  }
}
