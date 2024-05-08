## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

MakeCacheMatrix <- function(m = matrix()) {
  i <- NULL
  set <- function(x) {
    m <<- x
    i <<- NULL
  }
  get <- function() m
  setinv <- function(inverse) i <<- inverse
  getinv <- function() i
  list(set = set, get = get,
       setinv = setinverse,
       getinv = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(m, ...) {
  i <- m$getinv()
  if(!is.null(i)) {
    message("retrieving cached data")
    return(i)
  }
  matrix_to_invert <- m$get()
  i <- solve(matrix_to_invert, ...)
  m$setinv(i)
  i
}
