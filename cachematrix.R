## we are creating two functions ,first one "makeCacheMatrix",and second one "cacheSolve"
#, to cache the inverse of a given matrix.


## In makeCacheMatrix function basically four functions are defined which help us to cache the inverse of a given invertible matrix.

makeCacheMatrix <- function(x = matrix()) {   m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        getMatrix <- function() x
        setinverseMatrix <- function(inverse) m <<- inverse
        getinverseMatrix <- function() m
        list(set = set, getMatrix = getMatrix,
             setinverseMatrix = setinverseMatrix,
             getinverseMatrix = getinverseMatrix)


}


## cacheSolve matrix returns the inverse of cached matrix

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'

        m <- x$getinverseMatrix()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$getMatrix()
        m <- solve(data, ...)
        x$setinverseMatrix(m)
        m

        
}
