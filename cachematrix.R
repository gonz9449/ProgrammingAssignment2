## These two functions are created in order to store the inverse of a matrix.

## This first function is usefull because it allows you to create a matrix object which is able to store its inverse.

makeCacheMatrix <- function(x = matrix()) {
 j <- NULL
  set <- function(y){
  x <<- y
  j <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) j <<- inverse
  getInverse <- function() j 
  list(set = set, get = get, 
  setInverse = setInverse, 
  getInverse = getInverse)
}


## This second function calculates the inverse of the matrix obtained in the first function, returning to the original matrix. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
 j <- x$getInverse()
  if(!is.null(j)){
  message("getting cached data")
  return(j)
  }
  mat <- x$get()
  j <- solve(mat,...)
  x$setInverse(j)
  j
}
