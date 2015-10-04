import Foundation

public class GoldenRetriever {

  var headers: [String : String]?

  public init() {}

  public convenience init(headers: [String : String]) {
    self.init()

    self.headers = headers
  }

  public func fetch(resource: String, closure: (data: NSData?, error: NSError?) -> Void) -> NSURLSessionTask? {
    let sessionTask = fetch(resource, closure: { (data, _, error) -> Void in
      closure(data: data, error: error)
    })

    return sessionTask
  }

  public func fetch(resource: String, closure: (data: NSData?, response: NSURLResponse?, error: NSError?) -> Void) -> NSURLSessionTask? {
    var sessionTask: NSURLSessionTask?

    if let url = NSURL(string: resource) {
      let session = NSURLSession.sharedSession()
      let request = NSMutableURLRequest(URL: url)

      if headers != nil {
        for (key, value) in headers! {
          request.addValue(value, forHTTPHeaderField: key)
        }
      }

      sessionTask = session.dataTaskWithRequest(request,
        completionHandler: { (data, response, error) -> Void in
          closure(data: data, response: response, error: error)
      })

      sessionTask?.resume()
    }

    return sessionTask
  }
}
