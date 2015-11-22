## My function takes a matrix and returns its inverse

## This function takes a matrix and get the inverse of the matrix

makeCacheMatrix<-function(x = matrix()) {
        m<-NULL
        set<-function(y){
            x<<-y
            m<<-NULL
        }
        get<-function() x
        setinverse<-function(inverse) m<<-inverse
        getinverse<-function() m
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
    }



## This function resolve the inverse of the matrix as defined in makeCacheMatrix (x) and returns the inverse only if the matrix is not null.

cacheSolve<-function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    m<-x$getinverse()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    dat<-x$get()
    m<-solve(dat, ...)
    x$setinverse(m)
    m
}
