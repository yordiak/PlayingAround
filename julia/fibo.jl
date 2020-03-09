# For any positive number n, determine the first N numbers of a Fibonacci sequence

function fibo(n::Any,N::Int64)

f=0
    
(typeof(n)==Int64) ? a=Int64[] : a=Float64[] #specifying how the fibonacci sequence is presenting

for i=1:N
    if i==1
        push!(a,0)
    elseif i==2
        push!(a,n)
    else
        f=a[i-1]+a[i-2]
        push!(a,f) 
    end
        
end

println("The fist $N terms of a Fibonacci sequence of the number $n is $a")

end
