# Find the first N numbers of a Fibonacci sequence of any number n. 

function fibo(n,N)

f=0
a=Int64[]

    for i=1:N
        if i==1
           push!(a,0)
        elseif i==2
            push!(a,n)
        else
            f=a[i-1]+a[i-2]
            push!(a,f) 
        end            
    i= i+1
    end

return println("The fist , N, " numbers of a Fibonacci sequence of n=", n, " is ", a)

end
