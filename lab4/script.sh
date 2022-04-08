print("=====TASK 1=====");
db.specs.count();
print("=====TASK 2=====");
db.specs.find({$and : [{"language" : "C++", "publication_date" : {$gt : "1998"}}]}).pretty();
print("=====TASK 3=====");
db.specs.find({$and : [{$or : [{"language" : "C#"}, {"language" : "Java"}]}, {"publication_date" : {$lt : "2018"}}]}).pretty();
print("=====TASK 4=====");
db.specs.find({"previous_versions" : {$all : [ "ISO/IEC 23270:2006", "ISO/IEC 23270:2003" ]}}).pretty();
db.specs.find({"previous_versions" : {$size : 2}}).pretty();
db.specs.find({"previous_versions" : {$regex : "2006"}}).pretty();
