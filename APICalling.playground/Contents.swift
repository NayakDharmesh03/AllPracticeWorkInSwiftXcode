import UIKit

import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true
var str = "Hello, playground"


func getData(){
    let session = URLSession.shared
    let serviceURL = URL(string: "")
    
    let task = session.dataTask(with: serviceURL!, completionHandler: {(serviceData,serverResponce,error)})
}
