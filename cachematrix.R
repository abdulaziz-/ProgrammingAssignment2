## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix takes a matrix as an argument, 
## It caches the matrix, solve the matrix to get the inverse and caches it

makeCacheMatrix <- function(x = matrix()) {

m <- NULL
set <- function(y) {
x <<- y
m <<- NULL
}
get <- function() x
setinverse <- function(solve) m <<- solve
getinverse <- function() m

list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)

}


## cacheSolve computers the inverse of what makeCacheMatrix returned, 
## if the inverse has been computed then cache is used, otherwise it is computed and cache using setinverse()

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	m <-x$getinverse()
	if(!is.null(m)) {
		return(m)
	}
	data <- x$get()
	m <- solve(data, ...)
	x$setinverse(m)
	m

}
