/*:
### Error Handling in Swift 2: try, catch, do and throw
*/

//Custom Error
enum LoginError : ErrorType {
    case UsernameNil
    case UsernameEmpty(message: String)
    case UsernameTooLong(message: String)
}

//Function that throws error
func loginUserWithName(username: String?) throws -> String {
    
    if let username = username {
        
        guard username.characters.count != 0 else {
            throw LoginError.UsernameEmpty(message: "No username provided")
        }
        guard username.characters.count <= 10 else {
            throw LoginError.UsernameTooLong(message: "Username is too long")
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
        
    } catch LoginError.UsernameEmpty (let message) {
        print(message)
        //Do stuff
        
    } catch LoginError.UsernameTooLong (let message) {
        print(message)
        //Do stuff
        
    } catch {
        print("An error occurred \(error)")
        //Do stuff
    }
}

//Run example
login()
