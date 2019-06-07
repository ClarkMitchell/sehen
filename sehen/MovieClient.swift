import Alamofire

public struct MovieClient  {
    public func get() {
        Alamofire.request("http://localhost:3000/movies").responseJSON { response in
            print(response.result.value)
        }
    }
}
