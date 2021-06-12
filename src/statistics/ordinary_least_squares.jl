using DataFrames
using Random
#-------------------------------------------------------------------
# Creating Data
a = [10, 14,17,21,20, 18, 42, 51, 77, 11, 91]
b = [0.11,0.7,0.2,0.19,0.09,0.8, 0.71,0.1, 0.6,0.3,0.81]

function OLSbeta(y,x)
    beta = inv(x'*x)*(x'*y)
    return beta
end

OLSbeta(a,b)

#-------------------------------------------------------------------
using GLM # package for linear models

# Using GLM.jl
df = DataFrame(a=a, b=b)
ols = GLM.lm(@formula(a~b), df)
coef(ols) # print coefficients 

# Predict
predict(ols) # predict the model
