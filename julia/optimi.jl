# Performing sensitivity analysis of the objective value, 
# as the parameter of a specific variable varieties
# between 0 and 1.

using JuMP                                               # Loading the basic library for optimization
using Clp, Gurobi, Xpress                                # Loading solvers


# Creating a function in order to improve speed and avoiding the 'global' argument of 'k'
# op argument = specifying the solver
function run_model(solver_name) 
    
    
    m=Model(solver_name.Optimizer)


    @variable(m, x>=0)
    @variable(m, y>=0)

    @constraint(m, 2*x-4>=0)
    @constraint(m, y-0.5*x>=0)


    k=0 # iteration index
    obj_val=Float64[] # storing objective values

    while k<=1
        φ(x,y,k)=3*x+k*y # objective function

        @objective(m, Max, φ(x,y,k))
    
        optimize!(m)

        push!(obj_val, objective_value(m))
    
        k +=0.2
    end

return obj_val

end