## Put comments here that give an overall description of what your
## functions do

##Assignment: Caching the Inverse of a Matrix

##Function that creates an object that can cache the inverse of a matrix
##Please note that m must be a square matrix
 
makeCacheMatrix <- function(m = matrix()) {
        inv <- NULL
        set <- function(y) {
                m <<- y
                inv <<- NULL
        }
        get <- function() m
        setinverse <- function(solve) inv <<- solve
        getinverse <- function() inv
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}

##Function that returns the inverse of matrix m
cacheSolve <- function(m, ...) {
	    inv <- m$getinverse()
	    if(!is.null(inv)) { #check on the exsistance of the cached matrix
                return(inv)
        }
        data <- m$get()
        inv <- solve(data, ...) #inverse matrix obtained using the solve() function 
        m$setinverse(inv)
        inv #returns the inverse of m
}