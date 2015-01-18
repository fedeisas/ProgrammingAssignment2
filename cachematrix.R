## R Programming - John Hopkins - Coursera
## Programming Assignment 2
## Author: Fede Isas (https://github.com/fedeisas)
## January 2015

###################################################
## USAGE:
# my_matrix <- makeCacheMatrix(
#   matrix(c(1, 2, 3, 4), nrow = 2, byrow = TRUE)
# )
# cacheSolve(my_matrix)
# print(my_matrix$getinverse())
###################################################

## This function creates a special "matrix" object that
## can cache its inverse.
makeCacheMatrix <- function (x = matrix()) {
  inverse <- NULL
  
  set <- function (y) {
    # message("setting new data...")
    x <<- y
    inverse <<- NULL
  }
  
  get <- function () {
    x
  }
  
  setinverse <- function (mean) {
    # message("setting inverse...")
    inverse <<- mean
  }
  
  getinverse <- function () {
    # message("getting inverse...")
    inverse
  }
  
  list(
    set = set,
    get = get,
    setinverse = setinverse,
    getinverse = getinverse
  )
}

## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
## If the inverse has already been calculated (and the matrix has not changed),
## then the cachesolve should retrieve the inverse from the cache.
cacheSolve <- function (x, ...) {
  inverse <- x$getinverse()
  
  if(!is.null(inverse)) {
    # message("getting cached data...")
    return(m)
  } else {
    # message("calculating inverse...")
  }
  
  data <- x$get()
  inverse <- solve(data)
  x$setinverse(inverse)
  inverse
}
