# Realm

* Realm is a mobile database. Realm.io[https://realm.io]

### Best Practices
* It's not necessary to save objects that are part of a relationship. Save only the root object.

```
//Creation
let user = User()
let item = Item()

//Set relationship
user.item = item;

//Save
//storage.saveItem.(item) It's not necessary
storage.saveUser(user)
```
