def lamb
    status = lambda {return "You gave up!"}
    p status.call
    "completed drill"
end
result = lamb
p result