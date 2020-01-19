## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix receive the square matrix and return inverse matrix.
## If matrix is not square, it returns error.

## Write a short comment describing this function
## First, set the value of matrix. Second,get the value of the matrix.
## Third, set the value of inverse matrix. Fourth,get the value of inverse matrix.

makeCacheMatrix <- function(x = matrix()) {
  inv_var <- NULL
  set <- function(y) {
    x <<- y
    inv_var <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv_var <<- inverse
  getinverse <- function() inv_var
  list(set = set, 
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
  
}


## Write a short comment describing this function
## First, get the value of inverse matrix(inv_var). Next, set the values and return.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv_var <- x$getinverse()
  if (!is.null(inv_var)) {
    message("getting cached data")
    return(inv_var)
  }
  mat_var <- x$get()
  inv_var <- solve(mat_var, ...)
  x$setinverse(inv_var)
  inv_var
}


