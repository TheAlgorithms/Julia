a = 1:10
b = 1:10
@test PearsonCorrelation(a, b) == 1

x = [12,15,17,21,18]
y = [6,9,-1,3,1]

@test PearsonCorrelation(x,y) ==  -0.5201361507569889
