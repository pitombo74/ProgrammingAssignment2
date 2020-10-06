## For this asssignment, let's write a pair of functions ("makeCacheMatrix" and "cacheSolve") to cache the inverse of a matrix.


## "makeCacheMatrix" creates a special object and caches its inverse.

makeCacheMatrix <- function(a = matrix()) {
inv <- NULL
set <- function(b) {
a <<- b
inv <<- NULL
}
get <- function() a
setInverse <- function(inverse) inv <<- inverse
getInverse <- function() inv
list(set = set,get = get,setInverse = setInverse,getInverse = getInverse)
}


## Next function calculates the inverse of the special "matrix" created by
## function above. If the inverse is previously calculated and matriz didn't change,
## then cacheSolve retrieves the inverse from the cache.

cacheSolve <- function(a, ...) {
## Returns inverse of 'a' matrix
inv <- a$getInverse()
if (!is.null(inv)) {
message("getting cached data")
return(inv)
}
mat <- a$get()
inv <- solve(mat, ...)
a$setInverse(inv)
inv
}
