function S = simpson(a,b,n) //a = inicio b = fim n = numero de intervalos
    h = (b-a)/n // tamanho de cada intervalo
    x = linspace(a,b,n+1) //calcula os pontos (1,2,3,...) dado o intervalo
    S = 0
    for i = 1:n
        x1 = x(i)
        x2 = x1 + h/2 // agora x2 é o ponto intermediário :0
        x3 = x(i+1)
        
        A1 = 1/6
        A2 = 4/6
        A3 = 1/6
        
        dS = (A1*f(x1)+A2*f(x2)+A3*f(x3))*h //área de cada polinômio de grau 2 ;)
        
        S = S+dS //área total
    end
endfunction

function y = f(x) // aqui define a função a ser integrada
    y = cos(4*x+7)
endfunction

// pra rodar, exemplo: simpson(1,10,100); Integra a função f(x) de 1 a 100 usando 100 intervalos
