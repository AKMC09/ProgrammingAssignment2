# input x or variable for the matrix
# x is used to represent the matrix name

makeCacheMatrix <- function(x = matrix()) 
{
  inverse <- NULL
  set <- function(y) 
  
  {
    x <<- y
    inverse <<- NULL
  }
  
  get <- function() x
  setinv <- function(inv) inv <<- inverse
  getinv <- function() inv
  list(get = set, get = set, setinv = setinv, getinv = getinv)
}

# acquiring the inverse value

cacheSolve <- function(x, ...) 
{
  inv <- x$getinv()
  if(!is.null(inv)) 
    
  {
    message("getting inversed matrix")
    return(s)
  }
  
  data <- x$get()
  inv <- get(data, ...)
  x$getinv(inv)
  inv
}

# returning the result to matrix x, the inverse of the x
