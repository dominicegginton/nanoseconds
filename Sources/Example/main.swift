import Foundation
import Nanoseconds

let start = Now()
sleep(1)
let end = Now()
let duration = end - start
print(duration)
