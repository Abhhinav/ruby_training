family = {
sisters: ["s1","s2","s3"],
brothers: ["b1","b2","b3"],
uncless: ["u1","u2","u3"],
aunts: ["a1","a2","a3"]
}

ifamily_member1 = family[:sisters]
ifamily_member2 = family[:brothers]

ifamily_member = [ifamily_member1,ifamily_member2]
#p ifamily_member.flatten


 mem = family.select do|key,value|
 key == :sisters || key == :brothers
 end
   
p mem.values.flatten

   