## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(m = matrix()) {
	s <- NULL
	set <- function(x) {
		m <<- x
		s <<- NULL
	}
	get <- function() m
	setsolve <- function(solve) s <<- solve
	getsolve <- function() s
	list(set = set, get = get,
			 setsolve = setsolve,
			 getsolve = getsolve)
}


## Write a short comment describing this function

cacheSolve <- function(m, ...) {
	s <- m$getsolve()
	if(!is.null(s)) {
		# message("getting cached data")
		return(s)
	}
	data <- m$get()
	s <- solve(data, ...)
	m$setsolve(s)
	s
}
