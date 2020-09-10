family = {
sisters: ["s1","s2","s3"],
brothers: ["b1","b2","b3"],
uncless: ["u1","u2","u3"],
aunts: ["a1","a2","a3"]
}

near_members = family.reduce(["hello"]) do |arr, (k,v)| #initialization is optional
    if ( k==:sisters || k==:brothers )
        arr<<v
    end
    arr
end
p near_members.flatten