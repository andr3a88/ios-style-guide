/*:
### Error Handling in Swift 2: try, catch, do and throw
With Extension
*/

//Custom Error
enum LoginError : ErrorType {
    case UsernameNil
    case UsernameEmpty
    case UsernameTooLong
}

// CustomStringConvertable protocol gives the possiblity to implement description of self
extension LoginError : CustomStringConvertible {
    var description: String {
        switch self {
        case .UsernameNil:
            return "Username cannot be nil"
            
        case .UsernameEmpty:
            return "Username cannot be empty"
            
        case .UsernameTooLong:
            return "Username is too long"
        }
    }
}

//Function that throws error
func loginUserWithName(username: String?) throws -> String {
    
    if let username = username {
        
        guard username.characters.count != 0 else {
            throw LoginError.UsernameEmpty
        }
        guard username.characters.count <= 10 else {
            throw LoginError.UsernameTooLong
        }
        return "token: " + username
        
    } else {
        
        throw LoginError.UsernameNil
    }
}

//Example
func login() {
    
    do {
        //When you use the try! keyword, you don't need to have do and catch around your code,
        //because you're promising it won't ever fail. But if it fails... fatal error: 'try!'
        let token = try loginUserWithName("")
        print("user logged in \(token)")
        
    } catch let error as LoginError {
        print(error.description)
        //Do stuff
        
    } catch {
        print("An error occurred \(error)")
        //Do stuff
    }
}

//Run example
login()
