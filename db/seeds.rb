p = 0

while p < 2
  Partition.create(name: "partition-#{p+1}")
  p += 1
end

f = 1

while f < 11
  Folder.create( name: "folder-#{f}",
                 partition_id: rand(1..2)
                )
  f+=1
end

sf = 1

while sf < 21
  Folder.create( name: "sub_folder-#{sf}",
                 parent_id: rand(1..10)
                )
  sf+=1
end

d = 1

while d < 41
  Document.create( name: "document-#{d}",
                   folder_id: rand(1..30)
                  )
  d+=1
end

