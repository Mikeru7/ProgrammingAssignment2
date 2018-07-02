## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## As the instructions tell us, we have to set the value of the matrix, get
## the value of the matrix, set the value of the inverse of the matrix, and
## get the value of the inverse of the matrix. The first few lines of code 
## introduce variables and set the value of the matrix. The next line gets 
## the matrix. The next two lines serve to set and get the inverse of the 
## matrix

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y) {	
        x <<- y
        inv <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) inv <<- inverse
    getinverse <- function() inv
    list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}



## Write a short comment describing this function
## This function gets the result of an inversed matrix. If the result is not
## yet known, the function solves

cacheSolve <- function(x, ...) {
           inv <- x$getinverse()
    if(!is.null(inv)) {
        message("getting cached data.")
        return(inv)
    }
    data <- x$get()
    inv <- solve(data)
    x$setinverse(inv)
    inv
}

 ## Return a matrix that is the inverse of 'x'
 ## To do this, you would need to plug the following into R, assuming you
 ## already have a matrix named "x"

m = makeCacheMatrix(x)
m$get()
cacheSolve(m)


}
