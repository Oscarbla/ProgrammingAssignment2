## Greetings. The following functions are used to cache a matrix and
## its inverse.

## This function creates the matrix and does the cache process.

makeMatrix <- function(x = matrix()) {
  o <- NULL
  set <- function(y) {
      x <<- y
      o <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) o <<- inverse
  getinverse <- function() o
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}

## This function calculates the inverse of the matrix. Before doing that, it
## checks if the inverse has already been calculated and gets it from the
## cache.

cacheInverse <- function(x, ...) {
  o <- x$getinverse()
  if (!is.null(o)) {
      message("getting cached data")
      return(i)
  }
  data <- x$get()
  o <- solve(data, ...)
  x$setinverse(o)
  o
}
