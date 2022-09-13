import WebURL
import Dispatch

func doIt() {
  DispatchQueue.concurrentPerform(iterations: 10_000) { num in
    let _ = WebURL("https://test/foo/\(num)")!
  }
}

doIt()
