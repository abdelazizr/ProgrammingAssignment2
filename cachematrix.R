
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#get inverse of matrix
#cache the result
#if call will provide the inverse

makeCacheMatrix <- function(x = matrix()) {
  my_inv <- NULL
  set <- function(y) {
    x <<- y
    my_inv <<- NULL
  }
  
  get <- function() x
  setinverse <- function(inverse) my_inv <<- inverse
  getinverse <- function() my_inv
  list(set = set, get = get, setinverse = setinverse , getinverse = getinverse)

}


## compute inverse of cached matrix
# check to see if matrix is cached
#if cached then will get it 
# if not cached will then perform expensive computation

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
            inv <- x$getinverse()
    if(!is.null(inv)) {
        message("getting cached data.")
        return(inv)
    }
    data <- x$get()
    inv <- solve(data)
    x$setinverse(inv)
    inv
}

