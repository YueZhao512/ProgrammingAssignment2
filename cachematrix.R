## The program uses two functions makeCacheMatrix and cacheSolve to cache the inverse of a matrix

## Function makeCacheMatrix creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
## changes the matrix stored in makeCacheMatrix   
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
## returns a matrix x stored in makeCacheMatrix  
  get <- function() {
    x
  }
## store the value of the input in a variable m
  setinverse <- function(z) {
    m <<- z
  }
## return the value of the variable m
  getinverse <- function() {
    m
  }
## store the above 4 functions in the makeCacheMatrix  
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
## computes the inverse of a square matrix
  m <- solve(data)
  x$setinverse(m)
  m
}

