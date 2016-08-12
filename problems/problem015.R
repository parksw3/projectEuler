lattice <- function(x, y){
    prod(1:(x+y))/(prod(1:x)*prod(1:y))
}

lattice(20,20)