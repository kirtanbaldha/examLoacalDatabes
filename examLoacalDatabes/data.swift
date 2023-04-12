
import Foundation

struct Modal {
    var id : Int
    var name : String
}

class fmdbHelper{
    
    static var file : FMDatabase!
    
   static func createFile(){
       var x = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
       x.appendPathComponent("My FMDB file1.db")
       file = FMDatabase(url: x)
       file.open()
       print(x.path)
       print("create file")
       createTable()
        
    }
   static func createTable(){
       let q = "Create table if not exists Students (name text, id integer)"
       try? file .executeUpdate(q, values: nil )
       print("create table")
    }
   static func addData(id : Int,name : String){
        let q = "insert into Student value '\(name)',\(id)"
       try? file.executeUpdate(q, values: nil)
       print("add data")
        
    }
    static func getData() -> [Modal]{
            var array = [Modal]()
            let q = " Select * from Students "
        if let data = try? file.executeQuery(q,values : nil){
                while data.next(){
                    let name = data.object(forColumn: "name") as? String ?? ""
                    let id = data.object(forColumn: "id") as? Int ?? 0
                    let obj = Modal(id: id, name: name)
                    array.append(obj)
                }
            }
            return  array
        }
    static func deleteData(id:Int,name : String){
        var q = "Delete from Student where id = /(id)"
        try? file.executeQuery(q,values : nil)
        var delete : FMDatabase
        
    }
}

